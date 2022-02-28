package com.music.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.domain.CartVO;
import com.music.domain.GoodsVO;
import com.music.domain.ProductVO;
import com.music.domain.TrackVO;
import com.music.mapper.AlbumMapper;
import com.music.mapper.CartMapper;
import com.music.mapper.ProductMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_= @Autowired)
	private ProductMapper pMapper;
	
	@Setter(onMethod_= @Autowired)
	private AlbumMapper aMapper;
	
	@Setter(onMethod_= @Autowired)
	private CartMapper cMapper;
	
	@Override
	public List<ProductVO> listProduct() {
		return pMapper.listProduct();
	}
	
	@Override
	public void insertProduct(ProductVO product) {
		pMapper.insertProduct(product);
	}

	@Override
	public void insertAlbum(AlbumVO album) {
		pMapper.insertAlbum(album);
	}

	@Override
	public void insertTrack(TrackVO track) {
		pMapper.insertTrack(track);
	}

	@Override
	public void insertGoods(GoodsVO goods) {
		pMapper.insertGoods(goods);
	}

	@Override
	public int searchPbno() {
		return pMapper.searchPbno();
	}

	@Override
	public List<AlbumVO> searchAbno() {
		return pMapper.searchAbno();
	}
	@Override
	public int checkPbnoForCart(ProductVO pvo) {
		int result = 1;
		
		ProductVO myPvo = pMapper.selectOneProduct(pvo.getPbno()); //내가 넣으려는 상품으로 product table 소환
		
		List<Integer> list = new ArrayList<Integer>();
		list.add(pvo.getPbno());
		
		//넣으려는 pbno구하기
		if(myPvo.getCategory().equals("1")) { //만약 앨범이라면
			log.info("이건 앨범입니다");
			List<AlbumVO> alist = aMapper.readAlbum_single(aMapper.selectAlbumWithPbno(pvo.getPbno()).getAbno());
			
			for(int i=0; i<alist.size(); i++) {
				list.add(alist.get(i).getPbno()); //앨범 안에 있는 트랙들의 pbno를 전부 리스트에 담는다.
			}
			
		}else {
			log.info("이건 트랙입니다");
		} //넣으려는 pbno 다 구함
		
		//카트 안에 있는 pbno 구하기
		List<CartVO> clist = cMapper.selectCartList(pvo.getId());
		List<Integer> cartPbnoList = new ArrayList<Integer>();
		for(int i=0; i<clist.size(); i++) {
			ProductVO myCartPvo = pMapper.selectOneProduct(clist.get(i).getPbno());
			cartPbnoList.add(myCartPvo.getPbno());
			
			if(myCartPvo.getCategory().equals("1")) { //만약 앨범이라면
				log.info("이건 앨범입니다");
				List<AlbumVO> alist = aMapper.readAlbum_single(aMapper.selectAlbumWithPbno(myCartPvo.getPbno()).getAbno());
				
				for(int j=0; j<alist.size(); j++) {
					cartPbnoList.add(alist.get(i).getPbno()); //앨범 안에 있는 트랙들의 pbno를 전부 리스트에 담는다.
				}
				
			}else {
				log.info("이건 트랙입니다");
			}
		}//카트 안에 pbno 다 구함
		
		//비교해보기
		
			for(int i=0; i<list.size(); i++) {
				for(int j=0; j<cartPbnoList.size(); j++) {
					if(list.get(i) == cartPbnoList.get(j)) {
						if(myPvo.getCategory().equals("1")) { //내가 넣으려는게 앨범이라면
							//카드에 있는 pbno 삭제
							CartVO cvo = new CartVO();
							cvo.setId(pvo.getId());
							cvo.setPbno(cartPbnoList.get(j));
							cMapper.deleteOneCartWithPbno(cvo);
						}else {
							result *= 0;
						}
					}
						
				}
			}
		
		
		return result;
	}

	@Override
	public void deleteProduct(int pbno) {
		pMapper.deleteProduct(pbno);
	}
	

}
