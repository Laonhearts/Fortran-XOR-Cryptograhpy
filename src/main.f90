program xor_encryption

    implicit none
    
    integer :: choice
    character(len=100) :: plaintext
    character(len=100) :: key
    character(len=100) :: ciphertext
    integer :: i, len
    
    ! 작업 선택
    write(*, *) "Enter your choice:"
    write(*, *) "1. XOR encryption"
    write(*, *) "2. Create ciphertext"
    read(*, *) choice
    
    if (choice == 1) then
        ! XOR 암호화
        write(*, *) "Enter the plaintext: "
        read(*, *) plaintext
        
        write(*, *) "Enter the key: "
        read(*, *) key
        
        len = len_trim(plaintext)
        
        do i = 1, len
            ciphertext(i:i) = ichar(plaintext(i:i), kind=1) ixor ichar(key(mod(i-1, len_trim(key))+1:mod(i-1, len_trim(key))+1), kind=1)
        end do
        
        write(*, *) "Ciphertext: ", ciphertext(1:len)
        
    else if (choice == 2) then
        ! 암호 생성
        write(*, *) "Enter the plaintext: "
        read(*, *) plaintext
        
        write(*, *) "Ciphertext: ", plaintext
        
    else
        write(*, *) "Invalid choice."
        
    end if

end program xor_encryption
