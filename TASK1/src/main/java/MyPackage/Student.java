package MyPackage;
import java.util.*;
public class Student{
	ArrayList<Integer> StudentIDs=new ArrayList<>();
	ArrayList<String> Names=new ArrayList<>();
	ArrayList<Integer> Ages=new ArrayList<>();
	ArrayList<String> Genders=new ArrayList<>();
	ArrayList<String> DOBs=new ArrayList<>();
	
	ArrayList<ArrayList> Grades=new ArrayList<>();
	void GradeSetter(int Stndid,String Name,int Age,String Gender,String DOB,double maths,double physics,double chemistry,double cs,double english) {
		ArrayList<Double> Subjects=new ArrayList<>();
		StudentIDs.add(Stndid);
		Names.add(Name);
		Ages.add(Age);
		Genders.add(Gender);
		DOBs.add(DOB);
		Subjects.add(maths);
		Subjects.add(physics);
		Subjects.add(chemistry);
		
		Subjects.add(cs);
		Subjects.add(english);
		Grades.add(Subjects);
		System.out.println(StudentIDs+" "+Ages+" "+Genders+" "+Names+" "+Grades+" "+DOBs);
	}
	ArrayList<String> Results(int sid){
		ArrayList<String> Result=new ArrayList<>();
		for(int i=0;i<StudentIDs.size();i++) {
			if(sid==StudentIDs.get(i)) {
				Result.add(Integer.toString(StudentIDs.get(i)));
				Result.add(Names.get(i));
				Result.add(Genders.get(i));
				Result.add(DOBs.get(i));
				Result.add(Integer.toString(Ages.get(i)));
				Result.add((Grades.get(i).get(0)).toString());
				Result.add((Grades.get(i).get(1)).toString());
				Result.add((Grades.get(i).get(2)).toString());
				
				Result.add((Grades.get(i).get(3)).toString());
				Result.add((Grades.get(i).get(4)).toString());
				Result.add(grade((double) (Grades.get(i).get(0))));
				Result.add(grade((double) (Grades.get(i).get(1))));
				Result.add(grade((double) (Grades.get(i).get(2))));
				
				Result.add(grade((double) (Grades.get(i).get(3))));
				Result.add(grade((double) (Grades.get(i).get(4))));
				double ADD=(double) (Grades.get(i).get(0))+(double) (Grades.get(i).get(1))+(double) (Grades.get(i).get(2))+(double) (Grades.get(i).get(3))+(double) (Grades.get(i).get(4));
			
				double percentage=ADD/5;
				
				if(percentage>=40) {
					Result.add("Pass");
				}
				else {
					Result.add("Fail");
				}
				break;
			}
		}
		return Result;
	}
	public static String grade(double marks) {
		if(marks>=95) return "A1";
		else if(marks>=90) return "A2";
		else if(marks>=85) return "B1";
		else if(marks>=80) return "B2";
		else if(marks>=75) return "C1";
		else if(marks>=65) return "C2";
		else if(marks>=55) return "D1";
		else if(marks>=40) return "D2";
		return "F";
	}
	
	int SID(int i) {
		return StudentIDs.get(i);
	}
	int Size() {
		return StudentIDs.size();
	}
	ArrayList<ArrayList> MMA(){
		ArrayList<ArrayList> A=new ArrayList<>();
		for(int i=0;i<5;i++) {
			ArrayList<ArrayList> B=Subjects(i);
			A.add(B);
		}
		return A;
	}
	ArrayList<ArrayList> Subjects(int i){
		ArrayList<ArrayList> B=new ArrayList<>();
		ArrayList<Integer> Ma=new ArrayList<>();
		ArrayList<Integer> Mi=new ArrayList<>();
		ArrayList<Double> Avg=new ArrayList<>();
		ArrayList<Double> ma=new ArrayList<>();
		ArrayList<Double> mi=new ArrayList<>();
		double max=0;double min=101;double avg=0;;
		
		for(int j=0;j<Grades.size();j++) {
			if((double)Grades.get(j).get(i)>max) {
				max=(double)Grades.get(j).get(i);
				Ma.clear();
				Ma.add(StudentIDs.get(j));
			}
			else if((double)Grades.get(j).get(i)==max){
				Ma.add(StudentIDs.get(j));
			}
			if((double)Grades.get(j).get(i)<min) {
				min=(double)Grades.get(j).get(i);
				Mi.clear();
				Mi.add(StudentIDs.get(j));
			}
			else if((double)Grades.get(j).get(i)==min){
				Mi.add(StudentIDs.get(j));
			}
			avg+=(double)Grades.get(j).get(i);
		}
		avg/=(Grades.size());
		int AVG=(int)(avg*100);
		avg=AVG/100.0;
		System.out.println(Ma);
		System.out.println(Mi);
		System.out.println(Avg);
		Avg.add(avg);
		ma.add(max);
		System.out.println(Ma);
		mi.add(min);
		System.out.println(Mi);
		System.out.println(Avg);
		
		B.add(ma);B.add(Ma);B.add(mi);B.add(Mi);B.add(Avg);
		return B;
	}
	
	
	
	
	
}