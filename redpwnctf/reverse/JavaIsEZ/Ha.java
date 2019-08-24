
import java.util.concurrent.ThreadLocalRandom;

class Ha {
	static int a;
	public static void main(String args[]){
		int i1, i2;
		String i3;
	  char[] i4;
		int i5;
		Object i6;
		int i7, i8, i9, i10, i11, i12, i13, i14;
		try{
			Class.forName("java.utils.ArrayList");
			a = ThreadLocalRandom.current().nextInt(1, 65535);
			i13 = a;
			i2 = 0;
			switch(i13) {
				case -555:
					System.out.println("noob");
					return;
				case 1:
					System.out.println("You got it right :P");
					return;
				case 4882:
					break;
				default:
					if (args.length - 1 > 0) {
						i3 = args[0];
					  if (i3.length() - 42 == 0) {
							i4 = i3.toCharArray();
							i2 = i4.length;
							i6 = new Object();
						} else {
							System.out.println("noob");
							return;
						}
					} else {
						System.out.println("You need to sprcify the flag...");
					}
					break;
			}
		} catch(Exception e) {
			i5 = 0;
		}
		i2 = 0;

	}
}
