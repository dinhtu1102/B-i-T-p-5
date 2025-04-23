BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

HƯỚNG DẪN CÁCH LÀM:

Hướng dẫn làm phần A: 
 - Chỉ cần nêu ra y/c của đồ án.
 - Không cần chụp quá trình làm ra db, tables.
 - Chỉ cần đưa ra db gồm các bảng nào,
   mỗi bảng có các trường nào, kiểu dữ liệu nào,
   và pk, fk, ck của các bảng.

Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

DEADLINE: 23H59:59 NGÀY 23/04/2025

p/s:
 - Sv được phép tham khảo mọi nguồn, nhưng phải tự làm lại.
 - Đọc thêm nội quy học tập để biết các chế tài.
 - Đã đến lúc khẳng định bản thân và toả sáng!
 - Chỗ nào vướng mắc cứ share lên nhóm để cùng tháo gỡ.

Bài làm:
A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
* mô tả bài toán cửa đồ án : Quản lý thư viện
  - Hệ thống quản lý thư viện là một phần mềm hỗ trợ quản lý các hoạt động trong thư viện như: quản lý sách, độc giả, mượn và trả sách. Hiện nay, nhiều thư viện vẫn còn sử dụng phương pháp thủ công để lưu trữ thông tin sách và người mượn, gây khó khăn trong việc tìm kiếm, kiểm kê và thống kê dữ liệu. Vì vậy, cần xây dựng một hệ thống phần mềm quản lý thư viện để tin học hóa các quy trình này nhằm nâng cao hiệu quả hoạt động và tiết kiệm thời gian.
    
* Yêu cầu của bài toán
- Yêu cầu chức năng:
- Quản lý sách:
+ Thêm, sửa, xóa thông tin sách (mã sách, tên sách, tác giả, thể loại, nhà xuất bản, năm xuất bản, số lượng…).
+ Tìm kiếm sách theo nhiều tiêu chí: tên sách, mã sách, tác giả, thể loại.
- Quản lý độc giả:
+ Thêm, sửa, xóa thông tin độc giả (mã độc giả, họ tên, ngày sinh, địa chỉ, số điện thoại, ngày đăng ký…).
+ Tra cứu thông tin độc giả.
- Quản lý mượn/trả sách:
+ Ghi nhận việc mượn sách: độc giả mượn sách nào, ngày mượn, ngày hẹn trả.
+ Ghi nhận việc trả sách: ngày trả, tính số ngày mượn, phát hiện trả trễ, tính phí phạt nếu có.
+ Theo dõi tình trạng sách (đang mượn, còn trong kho...).
- Thống kê - báo cáo:
+ Thống kê sách đang được mượn nhiều nhất.
+ Thống kê sách còn lại trong kho.
+ Báo cáo danh sách độc giả bị quá hạn trả sách.
+ Báo cáo tổng số sách, tổng số lượt mượn, tổng số độc giả.
  
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết

* Bảng "Chitietmuontra"

![image](https://github.com/user-attachments/assets/ea076fe3-8ca3-4203-a6e1-6d91c13b3f76)

Thiết lập khóa ngoại cho bảng

![image](https://github.com/user-attachments/assets/b366709b-5858-4da6-9362-11c921d334fa)

* Bảng "muontra"

![image](https://github.com/user-attachments/assets/5217f357-8335-4f95-a811-4ba761e5caf6)

thiết lập khóa ngoại
![image](https://github.com/user-attachments/assets/9f31f51f-8c84-45f8-8b27-ed32590f9721)
 
* Bảng "nhanvien"

![image](https://github.com/user-attachments/assets/1374ac55-aae2-4a9f-aa1e-59942f2a2232)

Thiết lập khóa ngoại.
![image](https://github.com/user-attachments/assets/6186789c-91b3-472a-be99-c7e3085c0849)

* Bảng "sách"

![image](https://github.com/user-attachments/assets/833c14de-1555-4f1b-a603-8585fa713f3c)

Thiết lập khóa ngoại.

![image](https://github.com/user-attachments/assets/95255d4c-21d2-4690-b46e-0d223de62cc3)
  
* Bảng "tacgia"

![image](https://github.com/user-attachments/assets/0748dd85-ce89-480b-a039-d6ed8a33ee6a)

Thiết lập khóa ngoại cho bảng

![image](https://github.com/user-attachments/assets/c377477a-b8e9-465d-86e3-68a6131749b3)

* Bảng "theloai"

![image](https://github.com/user-attachments/assets/3a4d7b12-c191-4e3c-9c08-84d09e094eb0)

Thiết lập khóa ngoại cho bảng.

![image](https://github.com/user-attachments/assets/1cf20b68-a2cf-4af2-98aa-bcf41b966658)

B. Nội dung Bài tập 05:
* Bổ xund thêm một vài trường phi chuẩn
   
![image](https://github.com/user-attachments/assets/ad6f81bd-0b48-405f-a98e-c718f642abee)

  => logic của bài toán:
  mục đích
  - Với mỗi dòng trong bảng sach:
    + Tìm tên tác giả tương ứng từ bảng tacgia dựa vào matacgia.
    + Tìm tên thể loại tương ứng từ bảng theloai dựa vào   matheloai.
    + Gán các giá trị này vào 2 trường cache tentacgia_cache và tentheloai_cache.
- Với mỗi maphieu trong muontra, hệ thống:
    + Tìm tất cả các bản ghi liên quan trong bảng chitietmuontra.
    + Cộng dồn số lượng (soluong) sách trong từng dòng.
    + Ghi tổng số này vào trường sotongsach.

3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   
![image](https://github.com/user-attachments/assets/3d575350-cda4-4835-a8b9-02e3f25147e2)

=> Nêu rõ các mục tiêu
   - Tự động lưu tên tác giả và thể loại vào trường phi chuẩn (tentacgia_cache, tentheloai_cache) khi sách được thêm mới hoặc cập nhật.
   - Giúp tăng tốc truy vấn vì không cần join với bảng tacgia hoặc theloai mỗi lần lấy tên sách + tác giả + thể loại.
   - Duy trì tính nhất quán giữa sach và tacgia, theloai nếu dữ liệu ban đầu chính xác.

5. Nhập dữ liệu có kiểm soát, 
   Nhập dữu liệu cho bảng "chitietmuontra"
   
![image](https://github.com/user-attachments/assets/66ec0c8f-b1cd-48c6-9009-e2c58bc09b86)

   Nhập dữ lieeum cho bảng 'tramuon'

![image](https://github.com/user-attachments/assets/f39f6b3c-9eb6-4944-9725-a3b9e1a9ad76)

   Nhập dữ liệu cho bảng "nhanvien"

![image](https://github.com/user-attachments/assets/eda93645-bccd-488a-9a78-cdb2bff0c789)

   Nhập dữ liệu cho bảng "sach"

![image](https://github.com/user-attachments/assets/3b7ca29b-5963-4158-af24-0df7207ad4a9)

   Nhập dữ liệu cho bảng "tacgia"

![image](https://github.com/user-attachments/assets/1c2f74ac-ea9a-4541-bb81-e62c25aa6fe0)

   Nhập dữ liệu cho bảng "theloai"

![image](https://github.com/user-attachments/assets/cb8da488-abc5-41e9-a4ff-4dcf4e6ffcd5)

* KẾT QUẢ TEST CHƯƠNG TRÌNH
  
![image](https://github.com/user-attachments/assets/af7057f8-c748-4e5b-9872-433a4e32a067)

5. Kết luận về Trigger đã giúp gì cho đồ án của em.

   1. Tự động cập nhật dữ liệu phi chuẩn (cache)
   2. Đảm bảo tính toàn vẹn dữ liệu
   3. Tự động hóa xử lý – giảm sai sót thủ công
  
   => KẾT LUẬN :Trigger đóng vai trò quan trọng trong việc tự động hóa xử lý dữ liệu trong hệ thống quản lý thư viện. Cụ thể:
   - Đảm bảo tính nhất quán dữ liệu: Trigger giúp cập nhật tự động các trường phi chuẩn (tentacgia_cache, tentheloai_cache, sotongsach) mỗi khi có thay đổi liên quan đến tác giả, thể loại,    hoặc chi tiết mượn trả.
   - Tăng hiệu năng truy xuất: Nhờ có các trường cache được cập nhật tự động, các truy vấn trở nên nhanh hơn, vì không cần join quá nhiều bảng.
   - Giảm sai sót thủ công: Khi người dùng chỉnh sửa tác giả hoặc thể loại, hệ thống sẽ tự cập nhật các thông tin liên quan mà không cần thao tác thủ công, giảm lỗi người dùng.
   - Hỗ trợ kiểm tra và thống kê dễ dàng: Các trường phi chuẩn đã được trigger xử lý giúp dễ dàng thống kê tổng số sách mượn, hoặc hiển thị tác giả/thể loại một cách chính xác.
