package utils;

public class FullPath {
	static String host = "http://localhost:8080/WebsiteBanHang/";

	public static String fullPath(String path) {
		return host + path;
	}
	public static String fullPathAdmin(String path) {
		return host+"Admin/pages/"+path;
	}

}
