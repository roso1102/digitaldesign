/*
 * UNSIGNED CHAR OVERFLOW DEMONSTRATION
 * 
 * This program demonstrates arithmetic overflow in unsigned char data type
 * and shows how to detect it manually.
 * 
 * KEY CONCEPTS:
 * - unsigned char: 1 byte = 8 bits
 * - 8 bits can represent 2^8 = 256 different values (0 to 255)
 * - int: typically 4 bytes = 32 bits  
 * - 32 bits can represent 2^32 = 4,294,967,296 different values
 */

#include<stdio.h>
#include<limits.h>

int main(){
    // Initialize two unsigned char variables
    // unsigned char range: 0 to 255 (2^8 = 256 possible values)
    unsigned char a = 250; // Close to maximum value (255)
    unsigned char b = 10;  // Small value to cause overflow
    
    // OVERFLOW OCCURS HERE!
    // 250 + 10 = 260, but unsigned char can only hold 0-255
    // So 260 wraps around: 260 - 256 = 4
    unsigned char result = a + b;
    
    printf("=== UNSIGNED CHAR OVERFLOW DEMONSTRATION ===\n");
    printf("a = %u\n", a);
    printf("b = %u\n", b);
    printf("a + b = %u (WRONG! Due to overflow)\n", result);
    
    // WHY USE INT? 
    // int has 32 bits (2^32 = 4,294,967,296 possible values)
    // This is large enough to hold the correct result (260)
    // When we add unsigned chars, C automatically promotes them to int
    int actual_result = a + b;
    printf("Actual result (int): %d (CORRECT! No overflow)\n", actual_result);
    
    printf("\n=== MANUAL OVERFLOW DETECTION ===\n");
    // MAIN LOGIC: Manual overflow detection
    // PRINCIPLE: If overflow occurred, the result will be smaller than
    // at least one of the operands (because it wrapped around)
    // 
    // Example: 250 + 10 = 260, but wraps to 4
    // Since 4 < 250 AND 4 < 10 is false, we check: 4 < 250 (TRUE!)
    // This indicates overflow occurred
    if (result < a || result < b){
        printf("✓ Overflow detected!\n");
        printf("  Logic: result (%u) < a (%u) = %s\n", 
               result, a, (result < a) ? "TRUE" : "FALSE");
        printf("  Logic: result (%u) < b (%u) = %s\n", 
               result, b, (result < b) ? "TRUE" : "FALSE");
        printf("  Since at least one is TRUE, overflow occurred.\n");
    }
    else{
        printf("✗ No overflow detected.\n");
        printf("  Both result >= a AND result >= b are true.\n");
    }
    
    printf("\n=== DATA TYPE COMPARISON ===\n");
    printf("unsigned char: 1 byte  = 8 bits  = 2^8  = 256 values (0-255)\n");
    printf("int:          4 bytes = 32 bits = 2^32 = 4,294,967,296 values\n");
    printf("Maximum unsigned char: %u\n", UCHAR_MAX);
    printf("Maximum int: %d\n", INT_MAX);
    
    return 0;
}