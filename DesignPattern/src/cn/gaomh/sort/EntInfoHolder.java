package cn.gaomh.sort;
public class EntInfoHolder implements Comparable<EntInfoHolder>{
		private String title ;
		private String info ;
		private int order;
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getInfo() {
			return info;
		}
		public void setInfo(String info) {
			this.info = info;
		}
		public int getOrder() {
			return order;
		}
		public void setOrder(int order) {
			this.order = order;
		}
		@Override
		public int compareTo(EntInfoHolder o) {
			if(this.order > o.getOrder()){
				return 1;
			}else if( this.order == o.getOrder()){
				return 0;
			}else{
				return -1;
			}
		}
		
	}