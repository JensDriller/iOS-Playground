#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        int userNum;     
        NSLog(@"Enter a number and I will print it that number of times!");
        scanf("%i", &userNum);
        
        for(int a = 1; a <= userNum; a++) {
            NSLog(@"%i", userNum);
        }
        
        
        ////////////////////////////////////
        
        
        int x = 1;
        while(x <= 6) {
            NSLog(@"%i", x);
            x++;
        }
        
        
        ////////////////////////////////////
        
        
        int y = 1;
        do {
            NSLog(@"%i", y);
            y++;
        } while(y <= 5);

        
        int age = 2;
        NSString *s;
        switch(age) {
            case 1:
                s = @"1";
                break;
            default:
                s = @"not 1";
                break;
        }
        NSLog(@"%@", s);
        
        
        ////////////////////////////////////
        
        
        1 == 2 ? NSLog(@"Equal") : NSLog(@"Different");
        
    }
    return 0;
}

