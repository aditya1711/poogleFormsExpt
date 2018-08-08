package poogleFormsExpt.form;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Form {
	Map<Long, Question> map;
	ArrayList<Question> list;
	long formID;
	
	long adminID;
	
	String formName;
	
	public Form(String name, Map<Long, Question> questionMap, long adminID){
		formName = name;
		map = questionMap;
		list = new ArrayList<Question>();
		for(Entry<Long,Question> e : map.entrySet()){
			list.add(e.getValue());
		}
		this.adminID = adminID;
		//TO-DO
		formID = 0;
	}
	
	public Form(String name, ArrayList<Question> list, long adminID){
		formName = name;
		this.list = list;
		map = new HashMap<Long, Question>();
		for(int i=0;i<list.size();i++){
			map.put(list.get(i).getID(), list.get(i));
		}
		this.adminID = adminID;
		//TO-DO
		formID = 0;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}
	
}
