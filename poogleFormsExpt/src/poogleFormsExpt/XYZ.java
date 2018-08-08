package poogleFormsExpt;

import poogleFormsExpt.form.Form;
import poogleFormsExpt.form.MultipleChoiceTypeQuestion;

public class XYZ {
	static MultipleChoiceTypeQuestion form = new MultipleChoiceTypeQuestion("Question 1 say", new String[] {"haha", "hehe"}, 15478);
	public static void main(String[] args){
		System.out.println(form.getPrompt());
	}
}
