package airways.controller;

import java.util.UUID;

public class UniqueID {
	public String createID()
	{
		String blog_id=null;
		blog_id=UUID.randomUUID().toString().replaceAll("-", "");
		return blog_id;
	}
}
