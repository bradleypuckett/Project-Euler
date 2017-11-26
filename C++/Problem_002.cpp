

int main(){
    int a = 0;
    int b = 1;
    int sum = 0;
    
    while(true){
        temp = fibonacci_next(a,b);
        int a = b;
        b = temp;
        
        if(temp >= 4000000){
            break;
        }
        
        if((temp % 2) == 0){
            sum += temp;
        }
    }
    std::cout << sum << std::endl;
    
}

int fibonacci_next(int x, int y){
    return x + y;
}
