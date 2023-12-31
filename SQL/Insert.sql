USE [WebsiteMuaSam]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/06/2023 6:59:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryImage] [nvarchar](20) NULL,	
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 11/06/2023 6:59:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/06/2023 6:59:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductPrice] [money] NULL,
	[ProductImage] [nvarchar](20) NULL,
	[ProductQuantity] [int] NULL,
	[ProductSold] [int] NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (1, N'Thời Trang', N'Cate_1.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (2, N'Thiết Bị Điện Tử', N'Cate_2.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (3, N'Máy Tính & Laptop', N'Cate_3.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (4, N'Máy Ảnh & Quay Phim', N'Cate_4.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (5, N'Đồng Hồ', N'Cate_5.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (6, N'Nhà Cửa & Đời Sống', N'Cate_6.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (7, N'Đồ Chơi', N'Cate_7.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (8, N'Dụng Cụ & Thiết Bị Tiện Ích', N'Cate_8.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (9, N'Sức Khỏe', N'Cate_9.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage]) VALUES (10, N'Nhà Sách Online', N'Cate_10.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (1, N'Đang Xử Lý')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (2, N'Đang Giao')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (3, N'Thành Công')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (4, N'Đã Hủy')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (1, N'Áo Khoác Jean Bò -Thời Trang Giới Trẻ', N'⭐Bảng size bên shop các bạn tham khảo ạ:
Size M: Dành cho người nặng từ  42kg - 55kg
Size L : Dành cho người nặng từ  56kg - 68kg
Size XL: Dành cho người nặng từ  69kg  - 80kg
👉 Bảng size mang tính chất tham khảo bạn có thể lấy size to hơn hoặc nhỏ theo yêu cầu của bạn!
Màu sắc: Đen – Be
Lưu ý: Các bạn có thể nhắn tin cho shop để tư vấn size.


I. SHOP CAM KẾT
- Sản phẩm Áo sơ mi kaki basic giống mô tả 100%
- Hình ảnh sản phẩm là ảnh thật, các hình hoàn toàn do shop tự thiết kế.
- Kiểm tra  cẩn thận trước khi gói hàng giao cho Quý Khách
- Hàng có sẵn, giao hàng ngay khi nhận được đơn 
- Hoàn tiền nếu sản phẩm không giống với mô tả
- Chấp nhận đổi hàng khi size không vừa trong 3 ngày.

II. HỖ TRỢ ĐỔI TRẢ THEO QUY ĐỊNH CỦA SHOPEE
- Điều kiện áp dụng (trong vòng 2 ngày kể từ khi nhận sản phẩm) 
- Hàng hoá bị rách, in lỗi, bung chỉ, và các lỗi do vận chuyển hoặc do nhà sản xuất.
1. Trường hợp được chấp nhận: 
- Hàng giao sai size khách đã đặt hàng 
- Giao thiếu hàng 
2. Trường hợp không đủ điều kiện áp dụng chính sách: 
- Quá 2 ngày kể từ khi Quý khách nhận hàng 
- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của KARLEY STORE
- Không thích, không hợp, đặt nhầm mã, nhầm màu,... 

III. MÔ TẢ SẢN PHẨM
⭐ Tên sản phẩm : Áo sơ mi kaki basic cao cấp
⭐ Chất Liệu: Chất kaki xuất hàn xịn 
⭐ Màu Sắc: Xám - Be - Xanh
⭐ Đặc Tính:  Chất vải áo là chất kaki cao cấp dày dặn, dễ phối hợp đồ, nam nữ mặc đều đẹp ạ 

#aosominam #aosomi #somi #somikaki #somibasic #somitheu #somitron #sominam #unisex #formrong ', 160000.0000, N'TT_1.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (2, N'Áo Thun Tay Ngắn -Thời Trang Giới Trẻ', N'✨ GIỚI THIỆU ÁO THUN   2 MÀU ĐEN/TRẮNG BASIC :
- Chất liệu:  cotton
- Màu sắc: Trắng, Đen
- Thiết kế: Trẻ trung, năng động hiện đại thể hiện cá tính
- Hình in rõ ràng , sắc nét, hiện đại
- Chất vải co mềm mịn, thoáng mát, thấm mồ hôi tốt. 
- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn
✨ HƯỚNG DẪN LỰA CHỌN SIZE ÁO PHÔNG TAY NGẮN NHÀ HighX 
- M:             nặng  44 - 51 kg ,  cao từ 1m55 - 1m65
- L:              nặng 52 - 59 kg, cao từ    1m63 đến 1m70
- XL:            nặng 60 - 69 kg, cao từ     1m65 đến 1m75
- 2XL:           nặng 70 - 78 kg, cao từ     1m68 đến 1m78
- 3XL:           nặng 75 - 90 kg, cao từ     1m75 đến 1m90

Những trường hợp có thân hình đặt biệt thì cho shop xin chiều cao và cân nặng để tư vấn size cho phù hợp nhé!

✨ NHỮNG ĐIỀU LƯU Ý KHI BẢO QUẢN ÁO:
Không để áo ở các nơi ẩm và nên giặt áo ngay sau khi sử dụng để tránh ẩm mốc;
Không giặt chung áo trắng với quần áo màu;
Không nên giặt trong nước nóng quá 40 độ để tránh áo bị giãn và mất form;
Không đổ trực tiếp bột giặt lên quần áo khi giặt để tránh áo bị phai và loang màu;
Không ngâm áo trong xà phòng quá lâu để tránh bạc màu.

✨MẸO ĐỂ GIỮ ÁO MỚI LÂU:
Nên giặt áo bằng nước lạnh hoặc nước hơi ấm, nước nóng sẽ làm vải áo giãn ra;
Phơi áo dưới nắng nhẹ, tránh nắng gắt để áo không bị bạc màu.

✨ 2.  Áo Thun HighX CAM KẾT : 
-  Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách 
-  Bảo hành 12 tháng ( 1 đổi 1)  với đường may và độ bền của vải 
-  Sẵn sàng nhận lại hàng nếu Quý khách không hài lòng và hoàn lại tiền 100%
-  Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh
-  Hoàn tiền hoặc đổi hàng ngay lập tức nếu sản phẩm bị lỗi do sơ suất của nhà sản xuất 
-  Cam kết được đổi trả hàng trong vòng 7 ngày. (Sản phẩm còn nguyên tem mác và chưa sử dụng )
-  Tất cả mẫu áo thun giao đến tay KH đều là hàng Made In Việt Nam 
-  Khuyến khích khách hàng nhắn tin ở ô “Chat Ngay” để nhận tư vấn trước khi đặt hàng để hạn chế đổi trả

HighX OFFICIAL XIN CẢM ƠN VÀ CHÚC QUÝ KHÁCH CÓ TRẢI NGHIỆM MUA SẮM TỐT NHẤT !

#aothunnamnu #aothununisex ##aonam #aonu #hoatiet #aongantay aophong #aococ #cotay #ngantay 
#aophongtaylo #aounisexnam #aounisexnu #aothunnam #aophongunisex #aothuntaylonam #aounisexnu', 165000.0000, N'TT_2.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (3, N'Áo Thun Phố Màu -Thời Trang Giới Trẻ', N'Thích hợp cho đám đông; Cùng một phong cách cho nam và nữCảnh áp dụng; Giải tríNội dung của thành phần vải chính; 100% CottonHàng mới 100%Hình ảnh thứ chín là biểu đồ kích thước ''Lưu ý:1.Vui lòng kiểm tra chi tiết kích thước trước khi mua (Tất cả các kích thước đều tính bằng Cm, xin lưu ý 1 Cm = 0.39in, 1in = 2.54 Cm) 1.0 inch 1.0 Cm 0.39 inch 2.5 Cm2.Vui lòng chỉ định Địa chỉ chính xác sau khi thanh toán3.Ah Nếu Bạn Có Bất Kỳ Câu Hỏi Nào, Vui Lòng Liên Hệ Với Chúng Tôi Qua "Chat", Chúng Tôi Sẽ Trả Lời Cho Bạn Trong Thời Gian Sớm Nhất Có Thể.4.Chúng tôi luôn cung cấp cho bạn những sản phẩm và dịch vụ tốt nhất với giá thành rẻ nhất!5.Phản hồi của bạn là rất quan trọng đối với chúng tôi.Nếu Bạn Hài Lòng, Hãy Thử Thử Thử Để Để lại Phản hồi Tốt.Giới thiệu sản phẩm:Nhiều cửa hàng đang bán chiếc áo sơ mi này ~Những điều của chúng tôi sẽ đắt hơn những người khác ~~ Nhưng kết cấu sẽ tốt hơn nhiều!!Chất liệu hoàn toàn khác so với những loại Polyester khác ~ Không phải Polyester rất thô!!Nhẹ nhàng cầm trên tay ~Cửa hàng giới thiệu■Hậu mãi không lo lắng!Nếu Bạn Có Bất Kỳ Câu Hỏi Nào Sau Khi Nhận Hàng, Bạn Có Thể Chat Với Chúng Tôi Riêng Nhất, Chúng Tôi Sẽ Chắc Chấp Cho Bạn Cách Hài Lòng Để Giải Quyết ~■Cửa Hàng Này Còn Hàng, Giao Hàng Nhanh, Bạn Có Thể Yên Tâm Đặt Hàng.Thường từ 5-18 ngày đến cửa hàng ~■Bán buôn có sẵn, mua theo nhóm có sẵn ~ Giá ưu đãi hơn ''■Tiếp tục cập nhật mỗi ngày vì có quá nhiều kiểu dáng, không thể cập nhật được tất cả cùng một lúc.Bạn cũng có thể gửi hình ảnh cho bộ phận chăm sóc khách hàng nếu bạn muốn.■Do các phương pháp đo khác nhau, sai số 2~3CM được phép, do lý do ánh sáng và màn hình khác nhau, có thể khác với hình ảnh. Vui lòng tham khảo sản phẩm thực tế!Có (^ _ ^) CóHướng dẫn giặt Aaaaaa:■Tất cả quần áo có thể dễ dàng rơi ra Sản phẩm như in, Hạt, Máy khoan nóng, Thủ công mỹ nghệ dây bạc, v.v., Vui lòng giặt tay nhẹ nhàng■Giặt quần áo sẫm màu riêng biệt※ Thân mến, hãy nhớ lấy gói ≥', 65000.0000, N'TT_3.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (4, N'Áo Khoác Nam -Thời Trang Giới Trẻ', N'👍THÔNG TIN SẢN PHẨM

- Kiểu dáng : Thời trang unisex dành cho Nam và Nữ,( lớn hơn form thường ).

- Áo khoác dù là loại áo khoác thường được làm từ vải dù. Vải dù là loại vải được tổng hợp và gia công từ nhiều loại sợi khác nhau như cotton, polyester hay từ các sợi nhân tạo và sợi vải thô.

- Ưu điểm của áo khoác dù đó là chống thấm nước, tạo sự thông thoáng, hút ẩm tốt nên có khả năng chống nắng.

Đặc biệt, nếu muốn chống nắng tốt thì bạn nên chọn áo khoác dù có màu tối. Vì áo màu tối hấp thụ nhiệt nhiều hơn nhưng lại có khả năng chống tia UV tốt hơn màu sáng.
- Chống nắng ko tạo cảm giác bí nóng khi mặc
- Chất liệu : VẢI DÙ 2 Lớp
- Hướng dẫn chọn size ÁO KHOÁC :

+ Size XS:  DƯỚI 30KG
+ Size S:    TỪ 30 ĐẾN 35KG
+ Size M:   TỪ 35 ĐẾN 42KG
+ Size L:    TỪ 42 ĐẾN 55KG 
+ Size XL:  TỪ 55 ĐẾN 65KG
+SIZE XXL:   TỪ 65 ĐẾN  80 KG

👍LƯU Ý: 

- Bảng size chỉ mang tính tương đối khoảng 80 – 90%, tùy vào bạn muốn mặc rộng hay vừa nữa. Nếu bạn ở cận cuối size thì chọn lên 01 size nếu muốn mặc rộng nhé!
- Nếu bạn chưa rõ về size thì hãy xem review của các bạn đã mua trước ở mục review khách hàng hoặc inbox shop để được tư vấn size bạn nhé!
- Sản xuất : Việt Nam
- Sản phẩm được đóng gói bằng Túi Niêm Phong

👍CAM KẾT:

- Sản phẩm 100% giống mô tả, hình ảnh sản phẩm là ảnh thật.
- Áo Khoác mặc lên chuẩn form cực kì Sang Chảnh
- Hàng chụp tại shop, đảm bảo như hình.
- Hàng có sẵn, giao hàng ngay khi nhận được đơn 
- Hỗ trợ đổi trả theo quy định của Shopee 

👍 Hướng dẫn Bảo quản và Sử dụng sản phẩm:

- Khuyến khích giặt trước khi mặc áo
- Đối với những Sản phẩm có hình in nên lộn ngược vào trong khi giặt để tránh bong tróc và giữ hình in được lâu hơn
- Nên giặt tay 1 - 2 lần
- Không ngâm qua lâu
- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời

* MỌI SỰ HỖ TRỢ BẠN VUI LÒNG INBOX SHOP TRƯỚC NHÉ. SHOP SẼ TẬN TÌNH NHẤT CÓ THỀ ĐỂ MANG LẠI SỰ HÀI LÒNG CHO BẠN VỀ SẢN PHẨM Ạ.

---------------------------------------------------------------------------

#ao #re #aosomi #somi #unisex #aotaylo #tee #aocapdoi', 170000.0000, N'TT_4.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (5, N'Áo Khoác Boomber -Thời Trang Giới Trẻ', N'Áo Khoác Bomber NEW YORK - phong cách nam nữ WILL SHOP chất nỉ bông cotton
Áo khoác BOMBER vải nỉ bông cotton, đẹp, không co rút, Hình in không bong tróc, đặc biệt không những giúp bạn giữ ấm trong mùa lạnh mà còn có thể chống nắng, chống gió, chống bụi, chống rét, chống tia UV cực tốt, rất tiện lợi nhé!!!
Form rộng Unisex cho cả nam và nữ,  Hình Shop tự chụp
🌀 Đường may kỹ, tinh tế, sắc xảo.
🌀 Form chuẩn #ulzzang   #unisex Nam Nữ Couple đều mặc được.
Size: M L XL
Size M: 40 -54kg, cao từ 1m5
Size L: 55 -64kg, cao từ 1m66
Size XL: 65 -80kg, cao từ 1m73
✔️ Cam kết hàng form chuẩn và giống hình
✔️ Hoàn trả miễn phí nếu sản phẩm lỗi do sản xuất.
#willshopunisex 
#aokhoac
#quanao
#aokhoacni 
#bomber 
#ni #dạ', 150000.0000, N'TT_5.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (6, N'Áo Khoác Thể Thao -Thời Trang Giới Trẻ', N'Áo Khoác Thể Thao 3 Sọc Nam - Nữ Thun Poly 2 Da
THÔNG TIN SẢN PHẨM: 
- Thun poly 2 da cao cấp, Đường chỉ may chi tiết và chắc chắn
- Áo Thấm hút mồ hôi tốt
- Logo thêu cực đẹp
-  Chất vải không xù lông hay ra màu
THÔNG TIN SIZE:
M :  40-50kg
L :   50-60kg
XL:  60-70kg
XXL: 70-80kg

➡ SIZE CÒN PHỤ THUỘC VÀO CHIỀU CAO.
INBOX Trực Tiếp Shop Để Được Tư Vấn Sise
------------------★-------------------
- Giá tận xưởng không qua trung gian
- Hàng đẹp chất lượng
- Màu sắc có thể đậm - nhạt hơn trong hình không đáng kể, logo tùy đợt sẽ khác nhau 1 tí ạ.
- Cam kết hình chụp thật 100%

#aokhoacthethao #aokhoacnam #aokhoacthun #bothethao #aokhoac #aokhoacnu #aokhoac3soc #aothunnam #aokhoacdep', 165000.0000, N'TT_6.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (7, N'Áo Khoác Nhẹ -Thời Trang Giới Trẻ', N'Thông tin sản phẩm 
- Hàng Full tag, mác cực sang chảnh (xem video trên ảnh sản phẩm).
- Thiết kế thời trang, đơn giản không kém phần hiện đại
- Kiểu dáng gọn nhẹ, năng động
- Chất vải mềm mại, dễ thấm hút mồ hôi
- Kiểu dáng trẻ trung, cảm giác thoải mái
- Đường may sắc sảo tinh tế
- Phù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch..

- 5 size XS,S, M,L,XL,XXL
  SIZE XS < 30KG

Hướng dẫn sử dụng sản phẩm:
- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.
- Không được dùng hóa chất tẩy.
- Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp.

DUBATI CAM KẾT
Sản phẩm DUBATI form rộng 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh
Đảm bảo vải chất lượng 100%
Áo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách
Hàng có sẵn, giao hàng ngay khi nhận được đơn 
Hoàn tiền nếu sản phẩm không giống với mô tả
Chấp nhận đổi hàng khi size không vừa
Giao hàng trên toàn quốc, nhận hàng trả tiền 
Hỗ trợ đổi trả theo quy định của Shopee.

1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) 
- Hàng hoá vẫn còn mới, chưa qua sử dụng 
- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 
2. Trường hợp được chấp nhận: 
- Hàng không đúng size, kiểu dáng như quý khách đặt hàng 
- Không đủ số lượng, không đủ bộ như trong đơn hàng 
3. Trường hợp không đủ điều kiện áp dụng chính sách: 
- Quá 07 ngày kể từ khi Quý khách nhận hàng 
- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của DUBATI
- Không thích, không hợp, đặt nhầm mã, nhầm màu,... 
Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%
#aokhoacjean #aokhaocunisex #jacketjeansunisex #aokhoacnuunisex #aokhoacjeans #aokhoacjeannu #aokhoacbo #aokhoacbonu #aokhoacnu #aokhoacjean', 120000.0000, N'TT_7.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (8, N'Áo Khoác Vest Dáng Rộng -Thời Trang Nam', N'Chào mừng bạn đến với không gian thời trang

Nhớ like + theo dõi để nhận phiếu giảm giá!

Hướng dẫn trước khi bán hàng chất lượng cao, dịch vụ sau bán hàng hoàn hảo!

Xu hướng phải bắt đầu!Màn xếp rất tốt, may ba chiều, hiệu quả thân trên được nâng cao rất nhiều, thích hợp mặc thường ngày và trang trọng.
Nếu bạn thích quần áo bình thường và rộng rãi, bạn cũng có thể mua một cỡ lớn hơn

Tất cả các hàng hóa trong cửa hàng của chúng tôi là hiện có và mới
Các đơn hàng đặt trước 12:00 trưa mỗi ngày sẽ được xử lý và chuyển ngay trong ngày.

Mô hình kho nhà máy

Chào mừng đến với bán lại!

Phong cách: phù hợp
Mô hình: Đồng bằng
Vải placket: nút
Phong cách phân khu: nhỏ và tươi
Phong cách cơ bản: trẻ trung và bình dân
Mùa phù hợp: Bốn mùa
Độ dày: thường xuyên
Cảnh áp dụng: giải trí / nghề nghiệp / tiệc
Chiều dài: bình thường
Loại phiên bản: rộng
Đối tượng áp dụng: Thanh niên

Ghi chú:
1.Do các yếu tố như hiển thị vải, cài đặt hiển thị, v.v., màu sắc thực tế của sản phẩm có thể hơi khác so với màu của hình ảnh.
2. Kích thước là chỉ để tham khảo.
3. Do lô cắt và lô sản xuất khác nhau, quá trình in có thể xuất hiện bù đắp. Vui lòng đọc kỹ trước khi mua.
4.Vì lý do vận chuyển, nếu sản phẩm nhận được có nếp nhăn, đừng lo lắng, nó sẽ biến mất sau khi giặt. Nếu có, bạn nên ủi.

Nhãn sản phẩm:

#Quần áo bé trai #Giao ngay  #Thanh toán khi giao hàng   #Mát mẻ  #Xu hướng  #Cổ điển  #Mỏng vừa vặn  #Phiên bản Hàn Quốc  #Đẹp    #Giản dị phù hợp  #Trang trọng  #Bộ đồ #Áo khoác #Trang phục  #Quà tặng  #Leisure  #Áo khoác', 220000.0000, N'TT_8.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (9, N'Áo Khoác Ghi Lê Vải -Thời Trang Nam', N'Vải thường được gọi là vải lanh cotton
Vừa vặn
Loại cổ áo | Không có cổ áo
Chi tiết kiểu quần áo-Túi
Phong cách giải trí
Độ tuổi áp dụng “Trung niên (41-60 tuổi)
Nếu bạn không biết làm thế nào để lựa chọn kích thước. xin vui lòng liên hệ với chúng tôi, chúng tôi sẽ cung cấp cho bạn một gợi ý và giúp bạn chọn kích thước.

Chú ý đến

[1 "Nếu bạn có bất kỳ câu hỏi nào về sản phẩm, xin vui lòng liên hệ với bộ phận chăm sóc khách hàng, chúng tôi rất vui được phục vụ bạn"

[2 "Chào mừng đến với cửa hàng của chúng tôi"Sản phẩm của chúng tôi có chất lượng đáng tin cậy và giá rẻ nên các bạn nhớ chú ý nhé ''

[3 ''Nói chung, hàng hóa sẽ được vận chuyển trong vòng 48 giờ sau khi đặt hàng.Hàng hóa sẽ đến trong vòng 7-14 ngày và cần phải qua hải quan.Đối với các đơn đặt hàng khẩn cấp, vui lòng tham khảo trước khi đặt hàng ''

[4 "Do các phương pháp đo lường khác nhau, cho phép sai số 1-3CM, và phạm vi lỗi không phải là vấn đề chất lượng"

[5 "Màu sắc có thể khác với hình ảnh do các lý do ánh sáng và màn hình khác nhau.Vui lòng tham khảo sản phẩm thực tế.

[6 "Do sự thay đổi không đều của các nhà cung cấp sản phẩm, một số chi tiết sản phẩm có thể khác với hình ảnh, vui lòng chú ý khi chụp ảnh"

[7 “Nếu có vấn đề gì sau khi lấy hàng - giao hàng ít hơn, hậu cần chậm và bị lỗi. xin vui lòng liên hệ với chúng tôi trước, đừng lo lắng về đánh giá xấu, chúng tôi chắc chắn sẽ giải quyết vấn đề cho bạn, cảm ơn bạn!

[8''Sau Khi nhận hàng, nếu bạn hài lòng, tôi hy vọng sẽ khen ngợi năm sao (★★★★★)', 170000.0000, N'TT_9.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (10, N'Áo Blazer - Thời Trang Giới Trẻ', N'Thời gian giao hàng dự kiến cho sản phẩm này là 7-9 ngày

☆☆☆Chào mừng đến với cửa hàng của chúng tôi☆☆☆

 Cửa hàng của chúng tôi được giao hàng bởi công ty ở đại lục, hỗ trợ bán buôn và cung cấp số lượng lớn giao hàng ngay lập tức. Tất cả các sản phẩm là mới và không có khuyết tật. Hãy yên tâm để mua hàng.

 Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với chúng tôi qua "chat" và chúng tôi sẽ trả lời bạn trong thời gian sớm nhất.

 Bạn có thể chọn nhiều sản phẩm hơn từ cửa hàng của chúng tôi! Chúng tôi luôn cung cấp cho bạn những sản phẩm và dịch vụ tốt nhất với giá thành rẻ nhất!

 Chúng tôi sẽ hỗ trợ bạn giải quyết vấn đề cho đến khi bạn hài lòng. Vui lòng Không Cho Chúng Tôi Đánh Giá Tiêu Cực Hoặc Không Tốt Trực Tiếp.

 Sản phẩm của chúng tôi sẽ được vận chuyển trong thời gian sớm nhất sau khi đặt hàng. Làm ơn hãy kiên nhẫn.

 ✔ Lưu ý đặc biệt: Sản phẩm đã được gửi đi không thể hủy bỏ, mong bạn thông cảm, xin cảm ơn!

 Hy vọng bạn thích mua sắm tại cửa hàng của tôi và cảm ơn bạn đã ủng hộ!

 Phong cách cơ bản: Phổ biến cho giới trẻ 

 Mùa phát hành: 2021

 Độ dày: Tiêu chuẩn

 Loại kênh bán hàng: Thương mại điện tử thuần túy (chỉ bán hàng trên mạng)

 Thành phần nguyên liệu: Sợi polyester', 165000.0000, N'TT_10.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (12, N'Áo Khoác Vest Nhung -Thời Trang Giới Trẻ', N'Phong cách "đi làm đơn giản" Phiên bản Hàn Quốc
Chi tiết kiểu quần áo - đồng màu
Dây kéo
Phiên bản thường xuyên
Cách mặc áo nịt
Chiều dài - Thường xuyên
Vải''Chất liệu ''Corduroy''Polyester (Polyester)
Nội dung thành phần “91 ” (bao gồm) - 95 ” (bao gồm)



💗💗💗Kính chào quý khách hàng, chào mừng đến với cửa hàng của tôi💗💗💗

✨✨✨Chúng tôi là người bán hàng ở nước ngoài, thường cần thời gian vận chuyển 7-14 ngày.✨✨✨

🎏Cập nhật sản phẩm mới mỗi ngày, vui lòng theo dõi cửa hàng này.

🎀Nếu bạn không chắc chắn về kích thước, bạn có thể cho chúng tôi biết chiều cao và cân nặng của bạn và chúng tôi sẽ cho bạn biết

💕Nếu bạn hài lòng sau khi nhận hàng, xin vui lòng cho năm sao⭐⭐⭐⭐⭐

🌙Vui lòng xác nhận kích thước trước khi đặt hàng.Đổi trả lại - hoàn lại do sai kiểu dáng hoặc kích thước không được chấp nhận ''

☀️Vì khối lượng và trọng lượng của gói hàng bị hạn chế bởi dịch vụ hậu cần, nên những người mua số lượng lớn hàng hóa đặt hàng theo lô và liên hệ với bộ phận chăm sóc khách hàng!

👌👌👌Nếu bạn có bất kỳ câu hỏi nào, xin vui lòng liên hệ với chúng tôi.Chúng tôi sẽ cố gắng hết sức để giải quyết nó cho bạn ''👈

📢📢📢Lưu ý📢📢📢:

🎈Đơn vị đo lường thủ công: CM.Do các phương pháp đo lường khác nhau, cho phép sai số 3-5cm, và phạm vi lỗi không phải là vấn đề chất lượng "

🎈🎈Do đèn chụp và màn hình khác nhau nên màu sắc có thể hơi khác so với hình ảnh. vui lòng tham khảo sản phẩm thực tế ''

🎈🎈🎈Nếu hết hàng, chúng tôi sẽ liên hệ với bạn qua chat shopee.

☝️☝️☝️☝️☝️Nếu bạn cần bất kỳ sản phẩm nào khác, chúng tôi sẽ hỗ trợ bạn tìm thấy nó từ nhà sản xuất.Bạn có thể nhận được các sản phẩm chất lượng cao và giá cả phải chăng từ chúng tôi', 215000.0000, N'TT_11.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (13, N'Áo Vest Không Tay -Thời Trang Giới Trẻ', N'🎉Chào mừng đến với cửa hàng của chúng tôi, chào mừng đến với cửa hàng của chúng tôi🎉

✨Theo dõi sản phẩm của chúng tôi để được giảm giá nhiều hơn, ai đến trước được phục vụ trước

😊 Dịch vụ chất lượng cao là mục đích của cửa hàng của chúng tôi. Nếu bạn có bất kỳ câu hỏi nào, xin vui lòng liên hệ với chúng tôi trong thời gian.

M - 155cm / 45kg-165cm / 55kg
L - 165cm / 55kg-175cm / 62kg
Xl - 170cm / 62kg-180cm / 70kg
Xxl --175cm / 70kg-185cm / 80kg

Vải / Chất liệu: Khác / Khác
Phiên bản: Loose
Cổ chữ V
Chi tiết kiểu quần áo: màu trơn
Phong cách: Nhật Bản
Độ tuổi sử dụng: Thanh niên (18-25 tuổi)

Lưu ý:
1. Do các quốc gia / nhận thức khác nhau, vui lòng cho phép một chút khác biệt về màu sắc trong sản phẩm
2.Sản phẩm được đo thủ công nên sẽ có sai số 0,5~1cm', 120000.0000, N'TT_12.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (14, N'Áo Hoodie -Thời Trang Giới Trẻ', N'Áo chất nỉ in HIGHRAIN các màu như ảnh 
Sản xuất tại: phuongmyt 0989401395
Freesize 
nữ nam 40-60 kg cao 1m68 về mặc được 
🌸🌸🌸🌸🌸🌸🌸🌸🌸🤡🤡
Các bạn chú ý đọc Thông tin sp trước khi đặt hàng 
Shop chỉ chuyển đơn theo đúng phân loại khách chọn trong đơn ..
🌺🌺🌺

🎀 Chuyên sỉ lẻ các loại quần áo 4 mùa
🎀 Giá tại xưởng không qua trung gian
🎀 Mẫu mã đa dạng ,hợp thời trang
🎀 Các loại sản phẩm từ chất cotton,citi,lanh,thun....
🎁🎁
🎊🎊🎊Cảm ơn khách đã tin dùng sản phẩm của phuongmyt ', 160000.0000, N'TT_13.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (15, N'Áo Sweeter -Thời Trang Giới Trẻ', N'▲ Chất liệu: Polyester

▲Kích thước (Kích thước Trung Quốc, CM):

M-	Chiều dài: 66cm	, Lật tẩy:	134cm	, Vai:	66cm	, Tay áo:	41cm

						
L-	Chiều dài: 68cm	, Lật tẩy:	138cm	, Vai:	68 CM	, Tay áo:	42cm

					
Xl	Chiều dài: 70cm	, Lật tẩy:	142cm	, Vai:	70cm	, Tay áo:	43cm

2xl	Chiều dài: 72cm	, Lật tẩy:	146cm	, Vai:	72 CM	, Tay áo:	44cm

3xl	Chiều dài: 74cm	, Lật tẩy:	150cm	, Vai:	74 CM	, Tay áo:	45cm

(Bảng Kích thước chỉ mang tính tham khảo, do đo lường thủ công nên sẽ có sai số 3-5cm, đây không phải là lý do để trả hàng và hoàn tiền)

▲Ghi chú mua hàng

1. Không chấp nhận các đơn đặt hàng khẩn cấp, thời gian chuẩn bị khoảng 2-4 ngày, thời gian vận chuyển là khoảng 7-15 ngày;

2. Xin vui lòng hiểu rằng màu sắc của hình ảnh sẽ khác nhau vì điện thoại di động hoặc ánh sáng màn hình máy tính;

3. Nếu màu sắc và kích thước chính xác và sản phẩm trong tình trạng tốt, đổi trả không được hỗ trợ. Cảm ơn bạn đã HIỂU.

4. Quần jean của chúng tôi trong cửa hàng không có lỗ cài cúc. Chúng tôi đã để lại phác thảo của các lỗ nút. Bạn có thể cắt chúng bằng kéo. Chiếc quần jean bạn nhận được không có lỗ cúc không bị lỗi.

5. Nếu bạn hài lòng với sản phẩm của chúng tôi, xin vui lòng đánh giá 5 sao, nếu không, xin vui lòng liên hệ với chúng tôi, cảm ơn bạn rất nhiều ~', 130000.0000, N'TT_14.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (16, N'Quần Baggy Nam -Thời Trang Giới Trẻ', N'Quần baggy kaki nam nữ kiểu quần ống rộng basic unisex 3 màu đen, vàng, ghi ZenOne Store

 Thông số chọn size sản phẩm. 
Size M : 40-55 kg, cao 1m50 – 1m57
Size L : 55- 65 kg, cao 1m58 – 1m70
Size XL : 65 - 77 kg, cao 1m71 – 1m83

- Chọn size (nếu chênh lệch chiều cao cân nặng với mô tả dưới đây, nặng hơn thì bạn chọn theo cân nặng, cao hơn bạn chọn theo chiều cao nhé!)

Thông tin sản phẩm Quần Baggy Kaki
- Chất liệu: Kaki cao cấp
- Mực in cao cấp không bong tróc, hình in sắc nét, không phai màu, không gây hại cho da.
- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.
- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.
- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ

 HƯỚNG DẪN CÁCH ĐẶT HÀNG:
- Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship
- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng
- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán”
- Shop luôn sẵn sàng trả lời inbox để tư vấn

💹 Chính sách bán hàng tại shop:
- Cam kết giá tốt nhất thị trường, chất lượng tuyệt vời
- Sản phẩm cam kết như hình thật 100% 
- Đổi trả trong vòng 3 ngày nếu hàng lỗi, sai mẫu cho quý khách
- Hỗ trợ bạn mọi lúc, mọi nơi

#quan #kaki #ongrong #quankakiongrong# quanbaggy #quanbaggykaki #baggy #baggykaki  #ongsuong #quanongrong #quanongsuong #oversize #quankakiongrong #quakaki #quanunisex #quankakinam #quankakinu #quanbaggynu #quanbaggynam #quannam', 75000.0000, N'TT_15.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID])
VALUES (17, N'Quần Baggy Rách -Thời Trang Giới Trẻ', N'Với thiết kế quần jean baggy bò nữ lưng cao, mang đến form dáng chuẩn cho bạn. Với kiểu dáng trẻ trung, túi phía trước, túi quần sau tạo điểm nhấn cho chiếc quần của bạn.
Quần jean baggy nữ này có size từ 40kg đến 68kgcho bạn nữ bigsize tha hồ mà diện quần jean để set với áo sơ mi hay áo thun cực kỳ xinh đẹp đáng yêu
- Chất liệu jean baggy bò cotton không co giãn, vải jean mềm mịn thoải mái
- Chiếc quần jean baggy bò nữ mang màu sắc riêng biệt luôn là sự yêu thích của các bạn trẻ mang phong cách hiện đại.
- Xuất xứ: Việt Nam
- Size: S M L 30 31 32
- Kích thước:
 + Size S: Từ 40 - 45kg eo ngang rốn 64 - 66 Mông 84 -  86, Đùi 52, chiều dài 94cm
   + Size M: Từ 46 - 50kg eo ngang rốn 68 - 70 Mông 88 - 90, Đùi 54, chiều dài 94cm
   + Size L: Từ 51 - 56kg eo ngang rốn 72- 74Mông 92 - 94, Đùi 54, chiều dài 94 cm
   + Size 30: Từ 57 - 61kg  eo ngang rốn 76 - 78Mông 96 - 98, Đùi 60, chiều dài 95cm
   + Size 31: Từ 62 - 64kg eo ngang rốn 80 - 84 Mông 100 - 104, Đùi 60, chiều dài 96cm
   + Size 32: Từ 65 - 68kg eo ngang rốn 84 - 86 Mông 106 - 108, Đùi 60, chiều dài 96cm
Lưu Ý: Chị em nào vòng eo nhỏ nhưng mông và đùi to thì cứ lấy lớn hơn 1 size để mặc cho thoải mái nha
- Cam kết: 100% Chất liệu - Đường may - Form dáng đúng chất lượng
+ Đường may , Form dáng đúng chất lượng 

QUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ 
1. Điều kiện áp dụng
- Sản phẩm vẫn còn mới, chưa qua sử dụng, còn tem mác
- Sản phẩm bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 
2. Trường hợp được chấp nhận: 
- Hàng không đúng size, kiểu dáng như quý khách đặt hàng 
- Không đủ số lượng, không đủ bộ như trong đơn hàng 
3. Trường hợp không đủ điều kiện áp dụng chính sách: 
- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của shop
- Không thích, không hợp, đặt nhầm mã, nhầm màu,... 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%
#quan #baggy #jean #nu #ong #rong #suong #bo #lung #bigsize #ngo #cap #cao #jeans #vnxk', 105000.0000, N'TT_16.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (18, N'Quần Dài Dáng Rộng -Thời Trang Giới Trẻ', N'Chất liệu - Quần tây vải polyester thoải mái, mềm mại và nhẹ này. Nhẹ và thoáng khí, thích hợp cho mùa xuân và mùa hè.

Vẻ ngoài sang trọng - Những chiếc quần lọt khe dành cho nữ này có phần dáng rộng rãi tạo cảm giác vừa vặn thoải mái. Xuất hiện đồng màu, bình thường và linh hoạt. Phù hợp với mọi loại cơ thể.

Các chi tiết tinh tế - Với dây thắt lưng đàn hồi và dây rút có thể điều chỉnh, nó có thể dễ dàng điều chỉnh theo hình dạng của bạn. Xuất hiện đồng màu, thời trang và linh hoạt.

Dễ phối đồ - Quần âu kết hợp với áo thun thông thường, áo ngực thể thao hoặc áo ba lỗ, áo hoodie hoặc áo len quá khổ ấm cúng để tạo sự thoải mái tối đa.

Nhiều dịp khác nhau- Chiếc quần này thích hợp cho những ngày thường ngày, đi chơi, dự tiệc, đi làm, hẹn hò, dự tiệc, du lịch, ở nhà, văn phòng, kỳ nghỉ, bãi biển, v.v.

Quần tây nữ thường với màu đồng nhất, quần áo co giãn lưng

Sản phẩm thuộc tính
Chất liệu: Polyester
Loại: Quần áo
Phong cách: Đơn giản
Màu: Trắng, đen
Kích thước: S, M, L

Gói hàng bao gồm: 1 * quần

Chú ý
1. Hãy nhớ rằng do hiệu ứng ánh sáng, cài đặt độ sáng / độ tương phản / vv của màn hình, sẽ có một số khác biệt nhỏ về màu sắc của hình ảnh và các mặt hàng thực tế. Được đo bằng tay, độ lệch 1-2 cm là có thể.
2. Vui lòng để lại tin nhắn cho chúng tôi nếu bạn có bất kỳ câu hỏi nào. Chúng tôi sẽ phản hồi và cung cấp cho bạn dịch vụ tốt nhất của chúng tôi.', 145000.0000, N'TT_17.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (19, N'Quần Thun Dài Nam -Thời Trang Giới Trẻ', N'🔰  THÔNG TIN SẢN PHẨM : 

👉 Chất vải co giãn, đẹp, bền, không phai, không xù, không bám dính
👉 Đường may tinh tế, chỉnh chu, khéo léo
👉 Màu sắc đa dạng, trẻ trung
👉 Chất lượng sản phẩm tốt, giá cả hợp lý

------------------------------------

➡️ HƯỚNG DẪN CHỌN SIZE

Size M 40-55kg  1m45-1m60
Size L 45-58kg  1m55-1m65
Size XL: XL 50-63kg 1m65-1m75
Size XXL: 2XL 55-70kg 1m70-1m80

------------------------------------

🔰  HƯỚNG DẪN CÁCH ĐẶT HÀNG
⏩ Chọn màu và Size 
⏩ Cách chọn size: Shop có bảng size mẫu ( như ảnh )
⏩ Nhập coupon khi thanh toán ( nếu có )
⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn trong trường hợp bạn cần hỗ trợ
------------------------------------
📣  CHÍNH SÁCH "
Là khách hàng của Cc.chthing, bạn sẽ được:

👉 Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm) 
- Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.
- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 

👉 Trường hợp không đủ điều kiện áp dụng chính sách: 
- Quá 07 ngày kể từ khi Quý khách nhận hàng từ shopee.
- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Cc.clothing.
- Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.

👉 Cam kết được đổi hàng trong vòng 3 ngày kể từ khi nhận hàng ( giữ nguyên tem mác và chưa sử dụng )

👉Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%

📌
#Quần jogger nam
#quần ống rộng nam', 140000.0000, N'TT_18.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (20, N'Quần Tây Nam -Thời Trang Giới Trẻ', N'Quần jean nam đen baggy ống suông rộng 20we chất vải bò cao cấp dày dặn dáng đứng T01 hottrend 2022

✅ Quần jean nam đen với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh
✅ Quần baggy nam đen từ vải Denim jeans đen chất bò cao cấp nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.
✅ Dáng quan jean nam baggy ống suông rộng trẻ trung  tạo nên form dáng đứng jeans nam cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.
✅ quần jean baggy nam xanh đen màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.
✅ Size: 27 đến 34
✅ Xuất xứ: quần bò nam đen cao cấp được thiết kế và gia công bởi 20WE.OFFICIAL

✔️ BẢNG SIZE THAM KHẢO:
👖 Size 26 (Từ 38 - 42kg Cao Dưới 1m71)
👖 Size 27  (Từ 42 - 49kg Cao Dưới 1m71)
👖 Size 28  (Từ 50 - 54kg Cao Dưới 1m75)
👖 Size 29 (Từ 55 - 58 kg Cao Dưới 1m80) 
👖 Size 30  ( Từ 59- 62 kg Cao Dưới 1m80) 
👖 Size 31 (Từ 63 - 65 kg Cao Dưới 1m80)  
👖 Size 32  (Từ 66 - 69 kg Cao Dưới 1m80)  
👖 Size 33  (Từ 70- 73 kg Cao Dưới 1m85)  
👖 Size 34  (Từ 74 - 77 kg Cao Dưới 1m85)  
👖 Size 35  (Từ 78 - 85 kg Cao Dưới 1m89) 
👖 Size 36  (Từ 86 - 93 kg Cao Dưới 1m89)   
👖 Size 37 ( Từ 95kg-105kg Cao Dưới 1m89)   
NOTE : Hãy nhắn tin cho shop để được tư vấn size chuẩn nhất với bạn.
.............................................................................................................
✔️ Loại  : quần jeans nam, quần bò nam ,quần jean baggy nam
✔️ Màu sắc: quần jean nam đen, quần jean nam xanh, quần jean nam xám, quần jean nam trắng ( màu theo mã trên hình ) 
✔️ Thích hợp : Quần baggy nam jean ống suông rộng  thích hợp cho Đi Chơi,  Công Sở, Đời Thường
✔️Chất liệu  : quần rin nam được làm từ chất jeans
✔️kiểu dáng: jean baggy nam, quần jean nam ống suông, quần baggy nam ống đứng

✔️ QUẦN NAM JEAN BAGGY ĐEN DÁNG ỐNG SUÔNG, RỘNG NAM CAO CẤP
- Có phải bạn đang muốn tìm cho mình một chiếc quần jean baggy đen cao cấp mang style hàn quốc? 
May mắn là bạn đã tìm thấy chúng tôi.
-  Chiếc quần jeans nam baggy dành cho  nam này tại cửa hàng chúng tôi bán khoảng 600 chiếc mỗi tháng.
Đã bán hơn 6.000 chiếc chỉ tính riêng trên hệ thống của Shopee Việt Nam, chưa kể đến những kênh bán khác!
-  Bạn cũng sẽ là một trong số những người sẽ sở hữu chiếc quần jean trắng nam mang phong cách hàn quốc này.
Bởi vì đây là một chiếc quần jean mà cực kỳ dễ phối đồ từ áo thun....
Quần baggy nam jean  đen ống suông rộng dáng đứng chất jeans bò cao cấp rin trơn phom xuông unisex hàn quốc 20WE
(FILE ẢNH GỐC TRÊN)
#quanbaggynam #quannam #quanjeannam #quanbonam #quanongrongnam #baggynam #quanjeanbaggynam #quanbaggydennam #quanongrong #baggy #quanbeggynam #quan #quanjeandennam #20WE #quầnjeannamden #quầnjeansnam #quầnbònam #quanjeannamdep #quầnjeansnamden #quầnjeanốngrộngnam', 155000.0000, N'TT_19.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (21, N'Quần Thể Thao Nam Trơn -Thời Trang Giới Trẻ', N'🔔  ThuPhuongshop chuyên cung cấp sỉ & lẻ quần Jogger dành cho cả Nam và Nữ, được lấy ý tưởng và cải tiến lại từ những chiếc quần thể thao truyền thống nhằm tiện lợi và hợp thời trang. Tạo cho chiếc quần Jogger một form dáng đơn giản, không quá kén dáng người mặc, phù hợp cho mọi hoạt động.

❤️	THÔNG TIN VỀ SẢN PHẨM:
-	Xuất sứ: Việt Nam
-	Chất liệu: Polyester & Cotton
-	Độ dày: Vừa phải, phù hợp cả 4 mùa
-	Màu sắc: Đen, Xanh đen
-	Size: M, L, XL, XXL, XXXL

❤️	ƯU ĐIỂM NỔI BẬT:
-	Chất liệu vải thun Poly mềm mịn giúp co giãn thoải mái, độ dày vừa phải, ít xù lông, không phai màu thấm hút mồ hôi tốt.
-	Phù hợp cho cả nam và nữ.
-	Có thể mặc đi làm, đi chơi, đi học, tập thể dục,..
-	Form ống côn , gọn gàng và thời trang.
-       Lưng thun co giãn thoải mái, có dây rút.
-	Đường may chắc chắn, sắc sảo, tinh tế.
-	Có thể kết hợp với nhiều style khác nhau.

❤️	BẢNG SIZE:
- Size M: 45-50kg, dưới 1m60, chiều dài quần 92cm. 
- Size L: 52-62kg, dưới 1m70, chiều dài quần 94cm. 
- Size XL: 62-70kg, dưới 1m80, chiều dài quần 96cm.
- Size XXL: 71-83kg, dưới 1m80, chiều dài quần 98cm. 
- Size XXXL (nhắn tin riêng cho shop nhé): 83-93kg, dưới 1m80, chiều dài quần 100cm.
- Đối với các bạn đùi to, mông to , cao gầy có thể lựa chọn thêm 1 size để mặc thoải mái hơn.
- Khách hàng vui lòng nhắn tin cho shop để được tư vấn chi tiết và chính xác hơn nha.

 ❗  LƯU Ý:
 👉 Do điều kiện ánh sáng và chế độ cài đặt màn hình khác nhau nên màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10% so với hình ảnh.
 👉 Vui lòng cho phép sai số 1-3cm do kích thước của sản phẩm được đo lường bằng phương pháp thủ công.

   ✔Hỗ trợ tư vấn ~ Đổi trả sản phẩm khi gặp lỗi.
   ✔Bộ phận chăm sóc khách hàng 24/7.
   ✔Tư vấn, chăm sóc và giải đáp thắc mắc - HOÀN TOÀN MIỄN PHÍ.
   ✔Giao hàng tận nơi, ship 100% trên toàn Quốc.
   ✔NHẬN khuyến mãi hấp dẫn với mỗi lần mua hàng khác nhau.
  📞Hotline/Zalo: 0869337258
  🎁 Cảm ơn bạn đã tin tưởng và lựa chọn sản phẩm của shop, đừng quên nhấn “Theo dõi shop” để nhận Voucher khuyến mãi ngay nhé!

#quầnthunnam #quầnthun #quanthun #quầnthundàinữ #quầnthundài #quầnthunnữ #quầnthundàinam #quầnjoggerthunnam #quầnlưngthun #quầnthunnamdài #quầnthểthao #quầnthểthaonam #quầnáothểthao #quầnthểthaonữ #quầntậpgymnữ #quầnthểdục #quầntậpgym #quầndàithểthaonam #quầnthểthaonamdài #quầnthểthaonữđẹp #quanthethao #quanaothethao #quầnthểthaonữdài #quầnthểthao3sọc #bộquầnáothểthao #quầnthunthểthao #quầndàithểthao #quầnjogger', 125000.0000, N'TT_20.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (22, N'Đồng Hồ Thông Minh Thế Hệ Mới', N'Đồng Hồ Thông Minh Thế Hệ Mới ONL1C Chống Nước Nghe Gọi Kết Nối Điện Thoại Nhận Thông Báo

KHÔNG HỖ TRỢ THẺ SIM

*Thông Tin Kĩ Thuật:
- Bluetooth: BLE 5.0
- Cấp độ chống thấm nước: Chống thấm nước( hạn chế tiếp xúc trực tiếp)
- Chip điều khiển chính: MT2502
- Chip đo nhịp tim: HRS3300
- Bộ nhớ RAM: 128kb,
- ROM: 512kb
- Chế độ hoạt động: Nút chức năng cảm ứng đầy đủ
- Loại hiển thị:1,98 inch G F vừa vặn, cảm ứng đầy đủ
- Độ phân giải: 280 * 280 pixel (chế độ sáng vĩnh viễn)
- Loại pin: Tích hợp pin lithium coban nguyên chất
- Dung lượng pin: 300 mAh
- Thời gian sạc khoảng 3 giờ
- Thời gian chờ: 1-2 ngày tùy nhu cầu

ĐẶC ĐIỂM: Đồng Hồ Thông Minh Thế Hệ Mới  Chống Nước Nghe Gọi Kết Nối Điện Thoại Nhận Thông Báo. Bản ONL1C

1 * Hỗ trợ cuộc gọi điện thoại / từ chối cuộc gọi điện thoại / hỗ trợ trả lời điện thoại.
Nhắc nhở tin nhắn
2 * Hỗ trợ thay đổi dây đeo khác nhau: Thay đổi dây đeo Milanese / Nylon / Silicone / Thể thao, v.v.
3 * Đồng hồ thông minh chống nước: Chống thấm nước, nhưng vui lòng không mang theo khi đi tắm hoặc bơi
4 * Đồng hồ thông minh chăm sóc sức khỏe:
Đo huyết áp / Nhịp tim / Theo dõi giấc ngủ / Nhắc nhở ít vận động, v.v.
5 * Đồng hồ thông minh giải trí: Phát nhạc và điều khiển ảnh
6 * Hỗ trợ nhiều ngôn ngữ: Anh, Đức, Tây Ban Nha, Séc, Ả Rập, Thái Lan, Hà Lan, Ba Lan, Thổ Nhĩ Kỳ, Ba Tư, Do Thái, Malaysia, Việt Nam....
7 * Hỗ trợ nhiều chức năng thú vị và hữu ích hàng ngày khác
8 * Chức năng chống mất và tìm điện thoại
9 * Đồng hồ báo thức
Tags: Đồng hồ thông minh ONL1C điện tử thể thao nam nữ giá rẻ tích hợp nhiều chức năng đi kèm chống nước phiên bản giới hạn
Đồng hồ thông minh, đồng hồ nam, đồng hồ nữ, đồng hồ điện tử, đồng hồ giá rẻ, đồng hồ đẹp, đồng hồ thể thao, đồng hồ rẻ, đồng hồ thông minh cho nữ

KHÔNG HỖ TRỢ THẺ SIM

#donghothongminh #donghonam #donghonu #donghothongminht#donghothongminhnu #donghothongminhchongnuoc #donghogiare #donghothongminhgiare #donghothongminhonl1c#donghonghegoi#donghogiare#donghothethao##dongho#donghocaocap#donghodeotay#donghotot#donghochatluong#donghogiatot', 345000.0000, N'TBDT_1.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (23, N'Đồng Hồ Thông Minh T800 ProMax ', N'Đồng hồ thông minh T800 Promax kết nối Bluetooth 5.0 nghe gọi 2 chiều, theo dõi nhịp tim, nhận thông báo, chống nước, bh 12 tháng
==================================
🔐Chế độ bảo hành, đổi trả sản phẩm.
✅ Đổi trả sản phẩm trong vòng 7 ngày không cần lý do.
✅ Đổi mới sản phẩm trong vòng 30 ngày do lỗi của nhà sản xuất.
✅ Cam kết về chất lượng sản phẩm, hoàn tiền 💯% nếu hàng không đạt yêu cầu, kém chất lượng, sai mẫu mã.
✅ Quy trình làm việc chuyên nghiệp 
✅ Đội ngũ Support chuyên nghiệp 24/24 
==================================
💔 Ưu điểm sản phẩm
Màn hình độ phân giải cao, cân đối và mượt mà.
-Thay hình nền cá nhân, kho mặt đồng hồ cực khủng
-Nghe gọi trực tiếp, bấm số, đồng bộ danh bạ trên đồng hồ.
-Thiết kế chuẩn, có lẫy giữ dây chắc chắn.
-Hỗ trợ núm xoay thông minh
-Hỗ trợ đo nhịp tim, điện tâm đồ, oxy trong máu
-Hỗ trợ thể thao
-Hỗ trợ đồng hồ đếm bước chân, người điều dưỡng ít vận động, theo dõi giấc ngủ, âm nhạc BT, đồng hồ báo thức, máy tính, đồng hồ bấm giờ, lịch, thời tiết...
==================================
💔Thông số kỹ thuật
Kích thước: 45 * 38 * 10,8mm
-Trọng lượng 35g
-Đế sạc: không dây có thể tháo rời bộ sạc
-Màu sắc: Đen / Trắng / Hồng/ Xanh
-Pin: Lithium-ion polymer, 280mAh
-Động cơ rung: có
- Bluetooth: 5.0
-Ngôn ngữ: Tiếng Việt, Anh,', 455000.0000, N'TBDT_2.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (24, N'Khung Treo TiVi -An Phúc Lộc', N'khung tivi cố định ,dạng mâm gắn sẵn
sản phẩm được làm bằng sắt sơn tĩnh điện chống rỉ sét
dễ dàng lắp ráp
bảo hành 2 năm

thông số sản phẩm loại gật gù và sát tường
có 3 kích thước

loại nhỏ 32in
có thể dùng cho tivi từ 24 đến 40in

loại trung 42in
có thể dùng cho tivi tử 32 đến 50in

loại lớn 52in
có thể dùng cho tivi 37 đến 63in

thông số loại xoay
loại nhỏ từ 24 đến 40in
loại lớn từ 40 đến 63in

CHUYÊN SẢN XUẤT KHUNG TREO TIVI-KỆ TREO LOA- KE MÁY LẠNH-CHÂN TỦ LẠNH- CHÂN LỌC NƯỚC- CHÂN MÁY GIẶT

QUÝ KHÁCH HÀNG MUA SỈ SỐ LƯỢNG VUI LÒNG LH 0974242169 ĐỂ ĐƯỢC GIÁ TẬN XƯỞNG. 

#giare #giatreotivi #giatreotvre #tv24inch #tv40inch #khungxoaytv #giaxoaytv #khungtreotvxoay #giá_treo_tivi  #giá_treo_tivi_sony  #giá_treo_tivi_lg  #giá_treo_tivi_samsung  #giá_treo_tivi_panasonic  #giá_treo_tivi_xiaomi #giá_treo_tivi_tcl  #giá_treo_tivi_asanzo #khung_treo_tivi #kệ_treo_tường  #giá_treo_tivi_40inch', 50000.0000, N'TBDT_3.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (25, N'Giá Treo TV Góc Xoay -Chính Hãng NorthBayou ', N'Giá treo tivi NB P40 32 - 43 - 50 - 55 - 60 inch - Xoay góc đa năng - Chính Hãng NorthBayou [ Cao Cấp hơn NB P4 ]

*** Lưu ý có 2 phiên bản với thông số khác nhau. Quý khách vui lòng đọc kĩ miêu tả - tránh lựa chọn nhầm. Xin cảm ơn !

✪ Thông số kỹ thuật sản phẩm giá treo tivi xoay NB P40 ( Phiên bản cao cấp )
✔ Hỗ trợ màn hình 32” – 60”
✔ Trọng lượng màn hình hỗ trợ tối đa: 31kg
✔ Tương thích với  chuẩn VESA (100x100mm lên tới 400 x 400 mm).
✔ Chất liệu:  thép,nhựa, sơn tĩnh điện.
✔ Màu sắc : Đen.
✔ Trọng lượng : 3.8kg
✔ Phạm vi điều chỉnh độ nghiêng màn hình: +8°/-5°
✔ Cân bằng màn hình : 4°

✪ Thông số kỹ thuật sản phẩm giá treo tivi xoay NB P4 ( Phiên bản tiêu chuẩn )
✔ Hỗ trợ màn hình 32” – 55”
✔ Trọng lượng màn hình hỗ trợ tối đa: 27kg
✔ Tương thích với  chuẩn VESA (100x100mm lên tới 400 x 400 mm).
✔ Chất liệu:  thép,nhựa, sơn tĩnh điện.
✔ Màu sắc : Đen.
✔ Trọng lượng : 3.5kg
✔ Phạm vi điều chỉnh độ nghiêng màn hình: +8°/-5°
✔ Cân bằng màn hình : 4°

Chuyên cung cấp sản phẩm giá treo tivi - giá treo màn hình máy tính
#giatreotivi #giatreotivixoay #NBP4 #giatreomanhinh #giatreotividanang', 65000.0000, N'TBDT_4.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (26, N'Máy Chơi Game PS Vita 2000', N'+) Phụ kiện đi kèm

ốp nhựa,bao đựng, thẻ bảo hành.

+) Mô tả chi tiết
Máy gần như mới, chưa qua sửa chữa. Khi mua máy PSVita tại TOPO Shop, ngoài những game hệ PSVita các bạn sẽ được cài đặt sẵn trình giải lập và game của tất các hệ game cổ khác như NES/SNES/GBA/CPS/NEOGEO/PS1... và rất nhiều game PORT hay như GTA Vicecity, Hero3, Stardew Valley... điều này sẽ khiến việc trải nghiệm các tựa game trở lên đơn giản và thoải mái hơn rất nhiều. Không những thế, các bạn sẽ còn được cài sẵn rất nhiều game Việt hóa từ kho game riêng của TOPO Shop. Điều này sẽ giúp các bạn hiểu sâu hơn về cốt truyện cũng như gameplay của trò chơi.

+) Ưu đãi khi mua hàng tại TOPO Shop
✅ Được cài sẵn hơn 3500 game hay và game Việt hóa của tất cả hệ game mà máy hỗ trợ.
✅ Bảo hành 3 tháng 1 đổi 1
✅ Được tải game miễn phí tại kho game của TOPO: game.toposhop.vn
✅ Được tham gia group khách hàng để trao đổi game và update game hàng tuần

+) Tình trạng máy:
- Màn hình đẹp không bị nứt hay hở sáng. Hiển thị rõ ràng sắc nét.
- Viền máy, mặt sau xước nhẹ hoặc hầu như không xước. 
- Nút bấm chắc chắn, không bị lún sụp. 
- Máy nguyên Zin, không dựng, không sửa, không refurbished.
- Phụ kiện: Kèm cáp sạc, thẻ nhớ xịn chính hãng theo máy. Khách lưu ý không xài thẻ dỏm xài thời gian ngắn dễ nóng gây hỏng máy và brick máy. 
- Pin 4-5 h tùy cường độ sử dụng

+) Chức năng:
- Máy chạy phiên bản Hack cao cấp nhất Vita Deploy và được tối ưu bởi đội ngũ TOPO, cài sẵn app tải game PKGJ, giả lập RetroArch và giả lập Andrelaline (có ảnh mình họa trong mục mô tả)
- Đã chép sẵn full hơn 3500 game đủ hệ như PSVITA, PSP, PS1, NES, SNES, GBA... các game độc quyền và các game mới nhất của Playstation.

#psvita2000 
#psvita 
#playstationvita 
#playstation
#psvita1000
#vita1000 
#vita2000
#toposhop', 2500000.0000, N'TBDT_5.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (27, N'Máy Chơi Game X7 Plus -ABShop', N'Mô tả:
Tên sản phẩm: Bảng điều khiển trò chơi cầm tay
Kích thước màn hình: 3,5 inch
Định dạng trò chơi: hỗ trợ tám người giả lập
Định dạng Video: hỗ trợ AVI / RMVB / MP4 / MP5 và các định dạng khác
Dung lượng pin: 3000mAh
Mở rộng bộ nhớ: hỗ trợ dung lượng thẻ TF 1GB-64GB
Chức năng đa phương tiện: Hỗ trợ ảnh kỹ thuật số, nhạc, video và phim, lịch vạn năng, đồng hồ bấm giờ, máy ảnh, video, sách điện tử chuyên nghiệp.
Cách thực hiện: Nút mặc định, cần điều khiển vòng cung
Định dạng nhạc: APE / MP3 / WMA / ACC / FLAC
Phương thức tải xuống: Tải xuống từ cổng USB của máy tính
Chức năng lưu trữ: bộ nhớ điểm ngắt
Chất liệu: ABS

Thông tin chi tiết:

1.Độ bền siêu dài: pin lithium 3000mAh tích hợp, pin mật độ cao, độ bền cực lâu, an toàn và hiệu quả hơn, phát lại lâu dài 38 giờ
2.1200 Trò chơi: Tận hưởng một số lượng lớn các trò chơi cổ điển GBA, tài nguyên trò chơi phong phú và trải nghiệm niềm vui khi cầm trên tay di động! Đi đâu, đi đâu để chơi
3.Đầu ra TV HD: chỉ cần một dòng để kết nối với TV. Nó biến thành một màn hình lớn, rõ ràng hơn và sáng hơn. Nó có thể được kết nối trực tiếp với TV HD 4K
4.Âm thanh tốt: nghe êm ái, hỗ trợ âm nhạc kép mp3 / wma / Ogg / ACC / WAV và APE / FLAC
5.Thẻ nhớ 64g có thể mở rộng: thẻ có thể tải xuống bất kỳ trò chơi nào bạn thích, hỗ trợ 12 mô phỏng và phát 128 bit / arcade / một số trò chơi PS1 / một số N64

Gói hàng bao gồm:
1 * Máy chơi Game
1 * cáp AV
1 * Cáp sạc
(1 * Bộ chuyển đổi)
1 * thủ công', 750000.0000, N'TBDT_6.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (28, N'Phụ kiện Vỏ Bọc Bảo Vệ Tay Cầm', N'Chào mừng đến với trung tâm mua sắm ếch dữ liệu ~Cửa hàng của chúng tôi có nhiều loại sản phẩm điện tử, phụ kiện di động và phụ kiện chơi game.🚀🚀Và chúng tôi sẽ gửi gói hàng trong hai ngày sau khi bạn xác nhận đơn đặt hàng.💖💖Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với chúng tôi.Chúng tôi sẽ cảm ơn bạn cho phản hồi tích cực của bạn!* Vỏ silicon chống trượt cho bộ điều khiển Playstation 5-Phù Hợp hoàn hảo: Vỏ bảo vệ silicon này phù hợp với Bộ điều khiển PS5-Bảo Vệ hoàn toàn: Sau đó, nắp có thiết kế bao vây đầy đủ, do đó ngăn thiết bị của bạn cho Bộ điều khiển PS5 bị vỡ và trầy xước một cách hiệu quả.-Chất Liệu cao cấp: Được làm bằng chất liệu silicon cao cấp, mềm mại và bền.-Dễ Dàng truy cập: Tất cả các nút và cổng đều có thể được truy cập, vật liệu nhẹ và bền mang lại khả năng bảo vệ và độ bám tuyệt vời cho các trò chơi có độ bền tuyệt vời.-Chống Trượt và thiết thực: Có các hạt chống trượt trên tay cầm, vì vậy vỏ máy sẽ không rơi xuống đất khi bạn sử dụng thiết bị cho Bộ điều khiển PS5.* Chất liệu Silicone chất lượng caoChất liệu silicon với dầu cao su mang đến cho bộ điều khiển của bạn cảm giác mềm mại, tiện dụng, tạo cảm giác êm ái tuyệt vời trong khi chơi game.Cung cấp khả năng bảo vệ chống trơn trượt hiệu quả khi tay đổ mồ hôi, mồ hôi tay không còn sợ nữa!* Bảo vệ toàn diện 360 DgreeDa silicon được bao phủ toàn bộ bảo vệ mọi ngóc ngách của bộ điều khiển, Tránh bụi bẩn, trầy xước, rơi sốc làm hỏng bộ điều khiển của bạn.Ma sát silicon mang lại cảm giác cầm nắm thoải mái, chống trượt khi chơi game, không còn lo lắng về mồ hôi tay; Rất dễ cài đặt và tháo gỡ, vừa vặn với bộ điều khiển PS5, không ảnh hưởng đến bất kỳ chức năng nào.* Thêm bề mặt chống trượt GripBề mặt chống trượt rất tốt để mang lại độ bám tốt hơn để nâng cao hiệu suất chơi game.Bộ điều khiển PS5 bằng silicon có kết cấu với một gân ở phần mà lòng bàn tay của bạn chạm vào, giúp cải thiện đáng kể độ bám và sự thoải mái, hoàn hảo để nâng cao trải nghiệm chơi game.Để trở thành người theo dõi của chúng tôi, hãy ngạc nhiên ngay bây giờ!!!', 57000.0000, N'TBDT_7.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (29, N'Tay Cầm PS2 Có Dây - ABShop', N'Tay Cầm PS Có DâyThời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày

#Upgraded # #PS2 #Controller #Wired #Gamepad #Double #Shock #Game #Handle #for #Play #station #2 #Console 
Tay cầm chơi game có dây nâng cấp sốc đôi cho bảng điều khiển PS2 Play station 2
Mô tả:
100% Sản phẩm mới, chất lượng cao

Đặc trưng:
Vỏ sản phẩm được làm từ chất liệu ABS cao cấp. Mô tơ là mô tơ mới không phải mô tơ 2 tay.
Nút có chức năng bùng nổ, giúp kết nối và phản hồi nhanh chóng, không có độ trễ.
Với thiết kế 4 trục và 12 nút, mỗi hành động khiến bạn cảm thấy mình đang ở ngay trong trò chơi.
Cần điều khiển kép tương tự có độ chính xác cao nhận ra khả năng điều khiển đa hướng 360 độ, giúp mọi hoạt động trò chơi trở nên thuận tiện hơn.
Chức năng rung kép và được tích hợp sẵn cho cảm giác rung mát tinh tế và chân thực.

Mô tả sản phẩm:
Chất liệu: ABS thân thiện với môi trường
Thiết kế nút: Chế độ kỹ thuật số: 2 trục 10 nút; Chế độ analog: 4 trục 12 nút
Động cơ: Động cơ mới, không phải động cơ 2 tay
Chiều dài dòng: 1,8M/ 70,87inch

Lưu ý:
Xin vui lòng cho phép sai số 1-2 cm do đo lường thủ công.
Do sự khác biệt giữa các màn hình khác nhau, hình ảnh có thể không phản ánh màu sắc sản phẩm thực tế.

Gói hàng bao gồm:
1 Tay cầm có dây cho bảng điều khiển PS2 ', 80000.0000, N'TBDT_8.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (30, N'Tai Nghe Nhét Tai Bowie Bluethooth', N'★Theo dõi để được giảm giá★✔Chỉ hai bước để nhận chiết khấu●Xem cửa hàng●Theo dõi ngay lập tức★Mua sắm giảm giá★✔Xin đừng bỏ lỡ nhiều ưu đãi của cửa hàng!"Theo Dõi" chúng tôi và nhận phiếu giảm giá trên trang chủ cửa hàng●Hoạt động 1: Trợ giá cước vận chuyển●Hoạt động 2: Hoàn trả Shopee xu-------------------------------------【Tên Sản phẩm】 Vỏ tai nghe♫Chất liệu: silicone dẻo♫Phong cách: Phim hoạt hình / Đầy màu sắcSản phẩm này cung cấp khả năng bảo vệ mạnh mẽ cho tai nghe của bạn khỏi bị rơi, va đập, trầy xước và bẩnHình dạng của tai nghe được coi là hoàn toàn trong thiết kế, thuận tiện cho việc lắp đặt và tháo rờiChúng tôi có hàng tồn kho làm sẵn và đóng gói hoàn hảo - sau khi bạn đặt hàng, chúng tôi sẽ gửi hàng nhanh nhất có thểTrong trường hợp bình thường, bạn sẽ nhận được nó trong vòng 5-10 ngày sau khi đặt hàng (có thể hơi khác một chút tùy thuộc vào điểm đến, vui lòng tham khảo chi tiết hậu cần để biết chi tiết)★Ghi chú★:♫Sản phẩm này là hộp đựng tai nghe, không bao gồm tai nghe♫Chất liệu Silicone chắc chắn sẽ có mùi nhẹ và có thể giặt / làm khô trước khi sử dụng', 324000.0000, N'TBDT_9.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (31, N'Tai Nghe BlueTooth TWS 8D Bass', N'★Theo dõi để được giảm giá★✔Chỉ hai bước để nhận chiết khấu●Xem cửa hàng●Theo dõi ngay lập tức★Mua sắm giảm giá★✔Xin đừng bỏ lỡ nhiều ưu đãi của cửa hàng!"Theo Dõi" chúng tôi và nhận phiếu giảm giá trên trang chủ cửa hàng●Hoạt động 1: Trợ giá cước vận chuyển●Hoạt động 2: Hoàn trả Shopee xu-------------------------------------【Tên Sản phẩm】 Vỏ tai nghe♫Chất liệu: silicone dẻo♫Phong cách: Phim hoạt hình / Đầy màu sắcSản phẩm này cung cấp khả năng bảo vệ mạnh mẽ cho tai nghe của bạn khỏi bị rơi, va đập, trầy xước và bẩnHình dạng của tai nghe được coi là hoàn toàn trong thiết kế, thuận tiện cho việc lắp đặt và tháo rờiChúng tôi có hàng tồn kho làm sẵn và đóng gói hoàn hảo - sau khi bạn đặt hàng, chúng tôi sẽ gửi hàng nhanh nhất có thểTrong trường hợp bình thường, bạn sẽ nhận được nó trong vòng 5-10 ngày sau khi đặt hàng (có thể hơi khác một chút tùy thuộc vào điểm đến, vui lòng tham khảo chi tiết hậu cần để biết chi tiết)★Ghi chú★:♫Sản phẩm này là hộp đựng tai nghe, không bao gồm tai nghe♫Chất liệu Silicone chắc chắn sẽ có mùi nhẹ và có thể giặt / làm khô trước khi sử dụng', 275000.0000, N'TBDT_9.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (32, N'Máy Nghe Pháp -Loa Craven CR 853', N'*, Đài kinh phật, tụng kinh, nghe pháp, nghe nhạc, nghe FM: Là món quà tinh thần ý nghĩa giành tặng người thân.
- Kiểu dáng: nhỏ gọn, bỏ túi để bàn, xách tay thuận tiện.
- Không giống máy niệm phật tụng kinh bình thường trên thị trường mà là máy đa chức năng
- LOA CAO CẤP cho chất lượng âm thanh tốt, rõ ràng, không bị rè.
- Máy dùng 2 cục pin sạc cho thời gian nghe và sử dụng rất bền lên đến 6-8h
 - Máy có tới 2 khe thẻ nhớ
- Máy có bàn phím rất đơn giản và dễ dùng do vậy người cao tuổi có thể dễ dàng sử dụng
- Với nhu cầu hỗ trợ học tiếng anh cho bé, các mẹ có thể chép file học mp3 vào thẻ nhớ cho bé học tiếng anh hàng ngày.
 - Chức năng phát FM, các bạn có thể cập nhật tin tức, thời sự trên sóng FM tại bất kì đâu..
- Điện áp sử dụng : Pin sạc 2x3.7V
- Điện áp sạc : 5V
- Công suất Loa : 3W
*, Gồm: 1 Đài x 1 dây cáp sạc x 2 cục pin x 1 thẻ nhớ ghi các bài kinh phật, tụng kinh, nghe pháp ngẫu nhiên.
=========================
*, Hướng dẫn sử dụng:
- Bấm vào Menu (nút M) để chuyển về trạng thái giữa nghe FM và nghe nhạc
- Bấm vào Menu ( các số 1 2 3 ... để chuyển bài nhạc.
- DÒ ĐÀI FM: QUÝ KHÁCH MỞ NGUỒN LÊN SAU ĐÓ BẤM VÀO NÚT FM TRÊN LOA (LOA SẼ RÈ DO CHƯA CÓ ĐÀI), TIẾP THEO ẤN GIỮ NÚT PLAY/STOP KHOẢNG 3S KHI NÀO LOA NGẮT TIẾNG RÈ THÌ THẢ TAY (Loa dò tự động). CHỜ LOA DÒ VÀ LƯU LẠI NHỮNG ĐÀI KHU VỰC XUNG QUANH ĐANG CÓ. Sau khi dò xong đài sẽ trở lại phát các kênh đã rò được.
=== 
Chúc quý khách mua sắm vui vẻ.', 175000.0000, N'TBDT_11.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (33, N'Loa Máy Tính LapTop để bàn mini', N'🍀SHOP CAM KẾT:
_Hoàn tiền + đổi trả hoàn toàn miễn phí nếu có bất kỳ lỗi nào đến từ nhà sản xuất
_Đóng gói Có Tâm nhất Vịnh Bắc Bộ
_Tất cả hình ảnh đều do shop tự chụp

🍀Thiết kế ấn tượng
Loa có thiết kế nhỏ gọn, dạng loa đôi cá tính với màng loa lớn, cho âm thanh trải đều khắp không gian.

🍀Kết nối đơn giản
Loa sử dụng dây kết nối USB với laptop, PC, điện thoại, đầu DVD qua jack 3.5. Bạn chỉ cần cắm dây nối vào thiết bị phát là có thể sử dụng ngay mà không cần bất kỳ cài đặt nào khác.

🍀Âm thanh chất lượng
Loa vi tính nghe nhạc bass khỏe cho máy tính điện thoại giá rẻ chính hãng speaker là sản phẩm loa mới nhất thị trường hiện nay.
Công nghệ DSP, loa cho khả năng thể hiện âm thanh trung thực và ấn tượng. Loa có công suất khá cao so với các dòng loa vi tính hiện thời nên có khả năng đáp ứng đa dạng các thể loại nhạc.
🍀THÔNG SỐ KỸ THUẬT: 
 - Output power: 3W*2

 - Âm tần: 100Hz - 20KHz 

- S/N: >= 70db

- Nguồn cấp usb 2.0 + jack 3.5

_Kích thước: 106x66mm

#loamaytinh  #loamáytính  |#loamini  #loadeban', 320000.0000, N'TBDT_12.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (34, N'Smart Tivi Asanzo kết nối bluetooth', N'Dalo shop: 033,235,7836
.Dòng sản phẩm shop mới kinh doanh thêm - Để lấy lượt bán shop Tri Ân 100 lượt bán với giá SỐC nầy !!! Mọi người nhanh tay nào !!!
MIỄN PHÍ TPHCM ( TRỪ CỦ CHI - HÓC MÔN - CẦN GIỜ )
Sản phẩm mới 1000% 
Bảo hành chính hãng
Hoàn tiến gấp 100 lần nếu không phải là hàng chính hãng
Phân phối chính hãng bởi
---*** Hotline 033.235.7836 ---***
Giao hàng tận nhà nhanh chóng
Tivi Smart 55U81 Asanzo 55 inch dòng 4K ( UHD)
 
✳. Chạy hệ điều hành 9.0 cùng bộ xử lý 4 nhân
- Giảm thiểu tình trạng bị treo máy khi chạy tải nhiều ứng dụng cùng lúc.
✳. Kết nối phát video lên Youtube từ Smartphone:
- Có thể kết nối thông qua mã số một cách đơn giản, không cần sử dụng chung mạng wifi hoặc dây cáp.
✳. Tích hợp tính năng tìm kiếm bằng giọng nói, gọi ứng dụng và google Assistant:
- Tivi sử dụng Remote thông minh tích hợp Chuột bay, Voice Search, Google Assistant đồng thời có thể điều khiển Tivi thông qua mắt hồng ngoại và cả điều khiển qua Bluetooth (Tên Remote là: ASG RC)
- Tivi hỗ trợ Voice Search và Google Assistant trên tài khoản độc lập. (tài khoản google chỉ được đăng nhập trên một Tivi duy nhất)
- Tìm kiếm bằng giọng nói trong Youtube, Google hoặc Zing mp3 bằng remote.
✳. Thiết kế sang trọng – hiện đại
- Thiết kế tràn viền sang trọng, thể hiện nét lịch lãm và khỏe khoắn qua các thiết kế góc cạnh.
- Chân đế chắc chắn, được thiết kế với những cạnh vát tinh tế mang lại vẻ sang trọng cho dòng sản phẩm.
✳. Hỗ trợ công nghệ hình ảnh HDR
- Với Công nghệ HDR, hình ảnh được điều chỉnh đến từng điểm ảnh về màu sắc, độ sáng, độ nét, và nhất là độ tương phản. 
- Thêm vào đó TV còn được trang bị âm thanh vòm đa chiều, để tạo một không gian nghe nhạc hoặc phim sống động, mang lại cảm giác chân thực như đang chứng kiến trực tiếp.
✳. Kết nối thông minh
- Cách kết nối Bluetooth Remote với Tivi:
 + Lần đầu kết nối: Hướng remote vào mắt nhận TV (điều khiển như remote hồng ngoại thông thường) --> nhấn vào nút voice search trên remote đồng thời mở Bluetooth trên TV --> Remote phát Bluetooth và TV quét thiết bị, khi tên thiết bị ASG RC hiện lên, nhấn vào tên Thiết bị ASG RC để kết nối.
 + Kết nối lần 2 hoặc với TV Islim khác cùng model: - Hướng remote vào mắt nhận TV (điều khiển như remote hồng ngoại thông thường) --> nhấn cùng lúc MENU và EXIT trên remote và giữ 3 giây --> remote phát Bluetooth và Tivi quét thiết bị, khi tên thiết bị ASG RC hiện lên nhấn vào tên Thiết bị ASG RC để kết nối.
- Cách kết nối Bluetooth với Loa: Hướng Remote về phía TV và nhấn giữ phím nguồn để gọi cài đặt bluetooth, hoặc vào cài đặt chọn cài đặt mạng và chọn cài đặt Bluetooth, để dò thiết bị loa. Khi tên thiết bị loa hiện lên , nhấn vào tên loa để kết nối.
- Kết nối tiện lợi cho hệ thống nghe nhìn của bạn nhờ có một hệ thống phương tiện truyền thông mạnh mẽ giúp người dùng dễ dàng phối ghép với các thiết bị số trong nhà qua các cổng kết nối HDMI, AV, Component. 
- Kết nối USB cũng được Asanzo trang bị cho phép người dùng xem phim, nghe nhạc qua thẻ nhớ USB, mang lại', 7890000.0000, N'TBDT_13.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (35, N'Android Tivi  -Bảo Hành 12 Tháng', N'Đầu tivibox hàng chính hãng fpt-viettel-vnpt biến tivi thường thành smart tivi, xem youtube miễn phí, có xem truyền hình tuỳ từng kênh
Hàng cũ đã qua sử dụng
Phụ kiện : sạc, điều khiển thường (ko phải khiển giọng nói)', 1350000.0000, N'TBDT_14.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (36, N'Điều Khiển FPT Play Bõ FX6-2ND', N'Thông tin sản phẩm
Điều Khiển Đầu Thu FPT Play Box FX6-2ND-Remote Truyền Hình FPT

Bảo hành: 1 tháng lỗi đổi mới
Chức năng: Bật /tắt, chọn chế độ,tăng giảm nhiệt độ,hẹn giờ, và 1 số chức năng thông dụng khác...vv
Sản Xuất: Made in CHINA
Thích hợp mua thay thế điều khiển remote gốc đã hỏng.
 
Tương thích với nhiều dòng Box của FPT: Hd-Box, FPT TV, Box 4K, Box 4K FX6. Không dùng chung được với Box Androi Tivi ra lệnh giọng nói của FPT (tham khảo Remote Voice FPT)

Remote điều khiển của FPT TV 4K FX6 được kết hợp giữa tông trắng và xám. Layout dễ dùng, đầy đủ các phím chức năng.

Điều khiển đầu FPT truyền hình 4K FX6 chính hãng thông minh đa chức năng. Tiêu thụ điện năng thấp, khoảng cách truyền dài, vận hành dễ dàng và thuận tiện để sử dụng. Ngoại hình đẹp và cảm giác tay thoải mái. Nút lớn, tạo cảm giác thoải mái thích hợp cho cả gia đình. Không cần bất kỳ thiết lập hoặc lập trình nào, chỉ cần lắp pin AAA vào và hoạt động.
Hướng dẫn sử dụng Điều Khiển Đầu Thu FPT Play Box FX6
CÓ KHẢ NĂNG HỌC LỆNH
Sử dụng 2 viên pin AA
Cải tiến với chế độ hẹn giờ
Chế độ sleep tiết kiệm năng lượng
Cài đặt danh sách kênh ưa thích

Được sản xuất bằng vật liệu an toàn va thân thiện với môi trường theo tiêu chuẩn Châu Âu.

Sử dụng pin AAA dễ dàng lắp đặt

Thao tác 1: Đồng bộ remote TV và remote truyền hình Fpt
Nếu như không thực hiện bước này, chúng ta phải sử dụng song song 2 remote của TV và của dịch vụ Fpt vì vậy việc đồng bộ này hỗ trợ cho khách hàng chỉ cần 1 remote duy nhất của Fpt là đủ

Việc cần làm là sao chép các điều khiển từ remote TV qua Fpt với các bước như sau:

Đặt điều khiển 2 remote đối diện lại với nhau, trên remote của Fp có nút SET bấm giữ cho khi nào đèn đỏ chuyển qua cam.
Trên remote TV bấm giữ nút Power màu đỏ để đèn tín hiệu chuyển từ màu cam sang đỏ.
Nhấn tiếp nút Power màu xanh trên remote Fpt đến khi đèn tín hiệu chuyển từ đỏ sang cam.
Nhấn tiếp nút SET trên điều khiển của Fpt để hoàn tất.
 Đồng bộ các điều khiên từ TV sang remote Fpt

Ngoài ra các bạn cũng có thể sao chép các nút âm lượng, TV/AV, Power từ điều khiển TV sang Fp để dễ dàng sử dụng với các bước tương tự như trên.

Thao tác 2: Tìm hiểu các tính năng của nút Home
Home là khu vực màn hình chính của dịch vụ tổng hợp các icon của những dịch vụ đang có trong truyền hình Fpt hiện tại. Việc muốn xem gì chúng ta đều quay về màn hình Home và lựa chọn ứng dụng cần xem.

Việc điều khiển cũng cực kỳ đơn giản chỉ với việc thao tác các nút qua lại và Ok mà thôi. Trên remote Fpt có nút Home dù bạn đang ở ứng dụng nào khi chọn phím Home nó cũng sẽ quay về màn hình chính này.

 Home là giao diện chính bao gồm toàn bộ các ứng dụng, chương trình đang có trong đầu thu

Shop chuyên sỉ lẻ Điều Khiển Đầu Thu FPT Play Box FX6 toàn quốc.

#dieukhiendauthufpt
#remotedauthufpt
#truyenhinhfpt
#remotefpt
#dieukhienfpt', 50000.0000, N'TBDT_15.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (37, N'Đầu Thu DVB T2 TCTEK', N'Đầu Thu DVB T2 TCTEK 377 T2HD Chính Hãng -Truyền Hình Số Mặt Đất DVB-T2 miễn Phí - TCTEK 377
Đầu Thu DVB T2 TCTEK 377 T2HD Chính Hãng -Truyền Hình Số Mặt Đất DVB-T2 miễn Phí - TCTEK 377
Mã sản phẩm: TCTEK377
Danh mục: Đầu thu DVB T2
Loại thiết bị: Đầu thu dvb t2 chính hãng, Truyền hình miễn phí.
Xuất xứ: Việt Nam
Hãng sản xuất: tctek
Đầu thu kỹ thuật số TC-377 Vỏ nhựa là thiết bị được sử dụng trong ngành công nghệ truyền hình, nhằm mang đến cho ngưòi xem chất lượng hình ảnh sắc nét và âm thanh sống động với chuẩn HD.
Một trong những khác biệt của đầu thu DVB T2 là có vỏ sắt được làm rất to và chắc chắn, cho khả năng tản nhiệt tốt giống như model TCTECK T377.
Cách lắp đặt đầu thu DVB T2 TCTEK377 T2HD
Quý khách kết nối đầu thu vào TV bằng dây HDMI hoặc AV, sau đó cắm anten vào đầu thu rồi tiến hành dò kênh. Các tần số phát sóng của đầu thu DVB T2
Phụ kiện bao gồm:đầu tctek,điều khiển,nguồn 5v,dây av
Các kênh đầu thu DVB T2 TCTEK377 T2HD thu được (Trên 50 kênh không trùng nhau)
1 – VTV1 HD – Đài truyền hình Việt Nam
2 – VTV2 HD – Đài truyền hình Việt Nam
3 – VTV3 HD – Đài truyền hình Việt Nam
4 – VTV4 – Đài truyền hình Việt Nam
5 – VTV5 – Đài truyền hình Việt Nam
6 – VTV6 HD – Đài truyền hình Việt Nam
7 – VTV7 – Đài truyền hình Việt Nam
8 – VTV 8 – Đài truyền hình Việt Nam HD
9 – VTV9 – Đài truyền hình Việt Nam
#dau thu dvbt2#dau ky thuat so dvb', 700000.0000, N'TBDT_16.jpg', NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (38, N'Máy tính All in one HP 600G1', N'Chúng tôi chuyên Máy tính all in one máy tính đồng bộ ( tất cả trong 01 ) đó là dòng máy tính thế hệ mới nhất được nhập khẩu từ nội địa Nhật Bản và hàng từ Mỹ chủ yếu những thương hiệu HP all in one 
Đây là một trong những dòng máy tính đồng bộ chủ đạo một trong nhiều sản phẩm của Cty Âu Cơ với phương trâm tốt bền rẻ phù hợp với túi tiền của khách hàng công năng thì miễn bàn độ bền cao Bảo hành 02 năm máy đẹp chất lượng trên 95% như mới.
Là nơi cung cấp có UY TÍN máy tính Âu Cơ Computer luôn được khách hàng lựa chọn để cung cấp máy tính đồng bộ All in one cấu hình cao kiểu dáng rất thời trang phong cách hiện đại, tất cả sản phẩm của chúng tôi đều có chung một thị trường xuất xứ từ Nhật Bản và Mỹ ( USA ) cho lên chất lượng vô cùng tốt - chính vì vậy sự cam kết bảo hành 02 năm cho sản phẩm là chất lượng khẳng định của chúng tôi.
- Công ty Âu Cơ xin giới thiếu Máy tính All in one HP  600 G1 liền Màn hình 21.5 full HD ( Hàng nội địa Nhật Bản , Zin 100%) Bảo hành 24 tháng 1 đổi 1
- Hàng nội địa nhật ai đã dùng qua thì biết rồi , Siều bền - Siêu tốt - Chất lượng thì miễn bàn
- Máy tính All in one ( Cây liền màn Hình 22 inch ) Rất gọn gàng , không mất diện tích - không dây dợ nằng nhằng , Cắm dây cắm điện là dùng luôn 
==> Rất thích hợp văn phòng , Gia Đình - Học Tập .....
==> Hàng mới đến 99% 
-------------------------------------------------------------
Công ty chung tôi giới thiệu 14 cấu hình Quý Khách lựa chọn 
====> Cấu Hình 1 : HP 600G1 (G1820 / 4g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 2 : HP 600G1 (Core i3 - 4130 / 4g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 3 : HP 600G1 (Core i3 - 4130 / 8G / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 4 : HP 600G1 (Core i3 - 4130 / 4g / SSD 256G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 5 : HP 600G1 (Core i3 - 4130 / 8g / SSD 256G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 6 : HP 600G1 (Core i5 - 4570 / 4g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 7 : HP 600G1 (Core i5 - 4570 / 8g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 8 : HP 600G1 (Core i5 - 4570 / 4g / SSD 256G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 9 : HP 600G1 (Core i5 - 4570 / 8g / SSD 256G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 10 : HP 600G1 (Core i7 - 4770 / 4g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 11 : HP 600G1 (Core i7 - 4770 / 8g / SSD 128G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 12 : HP 600G1 (Core i7 - 4770 / 4g / SSD 256G) liền Màn hình 22 Inch Full HD
====> Cấu Hình 13 : HP 600G1 (Core i7 - 4770 / 8g / SSD 256G) liền Màn hình 22 Inch Full HD
==> Tặng Bàn phím chuột không đây - USB wifi  ( Vào mạng không cần dây ) - Bàn di chuột 
-----------------
Công ty TNHH TM&DV Âu Cơ
Đ/C :  Số 7 Ngõ 33 Phố Cự Lộc - Q Thanh Xuân - TP Hà Nội 
( Có chỗ để xe oto )
SDT : 024 62908313 Hotlien KD Chăm sóc khách hàng :  0977.737.955 - 0399.010.888 zalo , viber
Hỗ trợ kỹ thuật  : 0826.368.555 - 0822. 368 . 555  - Kế Toán :  0986.888.215', 5500000.0000, N'MTLT_1.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (39, N'Thùng Máy Tính H310 I3 9100F', N'Thùng Máy Tính H310 I3 9100F ram 8gb SSD 240gb Card GTX750ti chiến các loại game
clip test game các bạn có thể xem trên youtube Máy Tính Mạnh Lan nhé : https://www.youtube.com/watch?v=mex2Yl3Jteg&t=3s
Cấu hình máy chi tiết
- vỏ led lắp sẵn 4 fan led
- nguồn cst 450w trở lên
- main h310
- cpu i3 9100f
- ram ddr4 8gb
- ssd 240gb thoải mái lưu game
- card gtx750ti 2gd5
sản phẩm bán ra bảo hành 3 tháng', 2300000.0000, N'MTLT_2.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (40, N'Mini PC HP 800 G6 i7 gen 10 16G', N'Mini PC HP 800 G6 thế hệ 10.

Intel 5 10500T
Ram 16G ddr4 buss 2666 or 3200.
Ssd M.2 nvme 256G 
Hệ điều hành Win 10.
Máy tích hợp đầy đủ chức năng như Wifi, bluetoot, loa trong....
Cổng out có Diplayport, HDMI, 
Máy chính hãng nguyên zin shop bảo hành 1 năm 1 đổi 1.

Intel i7 10700T
Ram 16G ddr4 buss 2666 or 3200.
Ssd M.2 nvme 256G 
Hệ điều hành Win 10.
Máy tích hợp đầy đủ chức năng như Wifi, bluetoot, loa trong....
Cổng out có Diplayport, HDMI, 
Máy chính hãng nguyên zin shop bảo hành 1 năm 1 đổi 1.

22M Nguyễn Ảnh Thủ Phường Trung Mỹ Tây Quận 12 HCM .
0977704815 Mr Tiến ', 4300000.0000, N'MTLT_3.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (41, N'Màn hình máy tính Dell P2219H', N'MÀN HÌNH DELL

Model: P2219H
Kích thước: 22 inch
Độ phân giải: Full HD
Tấm nền: IPS
Loại màn hình: LED Backlit
Cổng kết nối: VGA, HDMI, DP
Có loa tích hợp
Nguồn điện: 110 đến 240 VAC, 50Hz đến 60Hz

Hàng nhập khẩu trực tiếp từ Nhật Bản
Cam kết màn đẹp, nguyên bản chưa qua sửa chữa
Sản phẩm là hàng đã qua sử dụng
Sản phẩm bao gồm màn, dây nguồn và cáp kết nối
Bảo hành 1 đổi 1 trong vòng 1 tháng

Batic Computer
102C đường số 8, P Trường Thọ, TP Thủ Đức
Mọi người có thể đến cửa hàng để mua trực tiếp', 3200000.0000, N'MTLT_4.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (42, N'Màn Hình Máy Tính Xiaomi Redmi Desktop Monitor', N'Màn hình Redmi Desktop Monitor 1A 23.8 inch - Màn hình máy tính Xiaomi - Màn hình máy tính văn phòng là mẫu màn hình phẳng nhà Xiaomi vừa mới ra mắt, với kích thước 23.8 inch cùng độ phân giải Full HD (1920 x 1080 pixel) và có góc nhìn 178 độ, công nghệ hình ảnh IPS nổi bật.
Thông số kỹ thuật chi tiết của màn hình Redmi Desktop Monitor 1A 23.8 inch
📌Công suất: 24W
📌Trọng lượng: 4.2kg
📌Kích thước: 539.2 x 181.2 x 419.5mm
📌Độ phân giải: 1920×1080
📌Tỷ lệ Màn hình: 16:9
📌Hình ảnh: 16.7 Triệu màu
📌Tương phản: 1000:1
📌Độ sáng: 250 nit
📌Góc nhìn: 178 độ
📌Công Nghệ: IPS
📌Tần số quét: 60hz
📌Mã sản phẩm: XMMNT238CZ
📌Thương hiệu:Xiaomi
📌Màu sắc: Đen
📌Mi Display 23.8 inch

Ưu điểm nổi bật của màn hình Redmi Desktop Monitor 1A 23.8 inch
✔️Sở hữu thiết kế mỏng nhẹ

✔️Màn hình sắc nét, hiển thị rõ từng chi tiết

✔️Trang bị hệ thống lọc ánh sáng xanh, không có hiện tượng nhòe mờ

✔️Độ phân giải màn hình cao, chất lượng và full HD

✔️Viền màn hình mỏng

✔️Chân đế hình trụ, có thể điều chỉnh góc nhìn của màn hình

✔️Thiết kế tối giản nhưng vô cùng sang trọng và tinh tế

----
⭐️Nếu bạn hài lòng về sản phẩm đừng quên đánh giá 5 sao để shop có thêm động lực hơn nữa nhé.
#manhinhredmidesktopmonitor1a23.8inch
#manhinh
#manhinhredmi
#manhinhredmidesktopmonitor
#manhinhredmidesktopmonitor1a
#desktopmonitor1a23.8inch
#xiaomimi1a
#xiaomimi1a23.8inch
#1a23.8inch
#238inch', 5300000.0000, N'MTLT_5.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (43, N'VGA Card màn hình Gigabyte GT 730 2GB DDR5', N'VGA Card màn hình Gigabyte GT 730 2GB DDR5 1 fan - Chiến mượt LOL, FF04

GPU: GeForce GT 730

GPU clock: 902 MHz

Bộ nhớ: 2GB GDDR5 ( 5000MHz / 64-bit )

Giao tiếp PCI: PCI-E 2.0 x16

Số lượng đơn vị xử lý: 384 CUDA cores

Cổng kết nối: 1 x HDMI , 1 x DVI-D , 1 x VGA/D-sub

Tản nhiệt: Tản nhiệt 1 quạt

#GT730 #N730 #LOL #FF04 #VGA
/___________________________________________________________________________________/
TKV Computer Store
TKV Computer
♦ Nhà phân phối thiết bị và linh kiện máy tính chính hãng
♦ Hỗ trợ các đại lý nhỏ lẻ trên Toàn Quốc với giá ưu đãi nhất
♦ Cam kết bán ra thị trường sản phẩm với giá tốt nhất, hậu mãi nhanh, chuyên nghiệp cho khách hàng.
♦ Địa chỉ: 
    - Cơ sở 1: Số nhà 12 Ngõ 2/53 Hưng Thịnh - Khu X2A - Yên Sở - Hoàng Mai - Hà Nội
        ☎️ 0977352004
    - Cơ sở 2: Số 29 Cửu Việt 1 - TT Trâu Quỳ - Gia Lâm - Hà Nội
        ☎️ 0922444482
♦ Fanpage:https://www.facebook.com/tkv.computer.store/', 1650000.0000, N'MTLT_6.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (44, N'Chuột Không Dây YINDIAO A2/BM110/R8A6 ', N'Form nhỏ vừa tay thoải mái khi cầm lâu
Switch chuột chống ồn khi bấm
phù hợp với môi trường yên tĩnh như văn phòng đêm khuya
Led RGB phù hợp môi trường
Pin sạc lại được nhiều lần với mỗi lần sử dụng lên tới 7 ngày làm việc
Wireless 2.4 với reciver USB thông dụng
Mắt đọc quang học siêu nhay đổi được tốc độ
Nút bấm độc quyền lên tới 10tr lượt bấm
Cổng sạc micro USB (kèm ngay cáp sạc)
----------------------------------------------------------
🌟 CÔNG NGHỆ JULY  :
 Chuyên phụ kiện điện tử, phụ kiện máy tính, điện thoại đồ chơi công nghệ, đồ dùng thông minh, hàng gia dụng.
 Hàng cam kết chất lượng - Uy tín hàng đầu 
🎉 Chúng Tôi Bán Với Giá Thấp Hơn - Đảm Bảo Hài Lòng Khách Hàng 🎉
vui lòng liên hệ
📞 Hotline: 0969.96.7879 - 0932.459.139 - Sỉ/Zalo : 0969.96.7879
-----------------------------------------------------------------------------------
Nhà sản xuất: WUHAN WEIGANG ELECTRONIC CO., LTD.
Địa chỉ: No.1-1, West, 6th floor, e-commerce center, Changfeng beihuante No.1 
(Wuhan Lanyan logistics base), Gutian No.2 Road, Qiaokou District, Wuhan', 79000.0000, N'MTLT_7.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (45, N'Laptop Dell Latitude  (Brand New)', N'Sản phẩm có thể có lỗi ngoại quan ở thùng nhưng không ảnh hưởng đến chất lượng sản phẩm.

**Khách hàng khi mua sản phẩm cần lưu ý có clip quay hình lại lúc mở kiện hàng và mở máy để shop hỗ trợ tốt nhất khi gắp sự cố.

**Thời hạn bảo hành: 24/09/2024, bạn có thể tra cứu thời hạn bảo hành của máy bằng cách nhập số Serinal number tại: https://www.dell.com/support/home/en-vn/?app=products

Lưu ý: shop sẽ làm việc với Shopee để dùng thông tin người nhận (tên, số điện thoại, địa chỉ nhận hàng, email...) để đăng kí bảo hành giúp bạn.

Laptop Dell Latitude 3420/Đen/i5-1145G7/16GB RAM/512 SSD/Win 10 (Brand New)

Thông tin chung:

Series laptop Latitude\nPart-number: L3420I5SSD

Màu sắc Xám

Thế hệ CPU: Core i5 , Intel Core thế hệ thứ 11

CPU: Intel Core i5-1135G7 ( 2.4 GHz - 4.2 GHz / 8MB / 4 nhân, 8 luồng )

Chip đồ họa: Onboard Intel Iris Xe Graphics

RAM: 1 x 16GB DDR4 3200MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )

Màn hình: 14\\\" ( 1920x1080 ), FHD không cảm ứng

Webcam: HD

Lưu trữ: 512GB SSD M.2 NVMe

Số cổng lưu trữ tối đa: 1 x 2.5 SATA , 1 x M.2 NVMe

Kiểu khe M.2 hỗ trợ: M.2 NVMe Cổng xuất hình: 1 x HDMI

Cổng kết nối: 1 x USB Type C / DisplayPort , 2 x USB 3.2 , 1 x USB 2.0 , 1 x micro SD card slot , Audio combo , LAN 1 Gb/s

Kết nối không dây: WiFi 802.11ax (Wifi 6) , Bluetooth 5.1

Bàn phím: thường , LED

Hệ điều hành: Windows 10 Pro bản quyền

Kích thước: 22.6 x 32.6 x 1.76 cm

Pin: 3 cell 41 Wh , Pin liền

Khối lượng: 1.5 kg

**Thông tin khác:

Đèn LED trên máy: không đèn

Phụ kiện đi kèm: Adapter, dây nguồn

**Liên hệ bảo hành: Bạn chỉ cần mang máy tới trung tâm bảo hành của Dell và có thể cung cấp hình ảnh đơn hàng trên app Shopee nếu được yêu cầu, nhân viên bảo hành của Dell sẽ hỗ trợ bạn.

Ngoài ra bạn có thể đi theo quy trình bảo hành bởi Shopee. Bạn cần gửi sản phẩm về kho của Shopee và nhân viên Shopee sẽ hỗ trợ bảo hành giúp bạn. Khi bảo hành xong, Shopee sẽ gửi lại cho bạn. Tuy nhiên thời gian bảo hành sẽ lâu hơn xíu bạn nhé', 18720000.0000, N'MTLT_8.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (46, N'Home Wifi Mesh Viettel  H196A -Tenda', N'🔥bộ phát wifi băng tần kép chuẩn ac1200 viettel mesh H196A hàng cũ đã qua sử dụng có trầy xước ít nhiều nhưng không ảnh hưởng đến chất lượng bên trong

✅ hàng cũ cho lên không có sách hướng dẫn cài đặt vì vậy quý khách hàng lên tham khảo thêm cách cài đặt trên Youtube có rất nhiều video chia sẻ cách cài đặt và sử dụng thiết bị

🔥 Mô Tả sản phẩm

- HOMEWIFI  là thiết bị phát wifi WiFi mạng lưới băng tần kép AC 1200Mbps được thiết kế cho nhà có diện tích trên 300㎡hoặc nhà 3 tầng, biệt thự, mang lại khả năng phủ sóng WiFi khắp nhà, cũng như kết nối internet nhanh và ổn định. Tương thích với các giao thức chuyển vùng liền mạch IEEE 802.11v và IEEE 802.11r, HOMEWIFI hỗ trợ tối ưu hóa mạng tự động và lựa chọn định tuyến tự động, cho phép bạn tận hưởng mạng không dây ổn định và linh hoạt hơn. Thiết bị có thể mesh với nhau và mesh với modem F670Y của Viettel
Sản phẩm chính hãng do Viettel phân phối', 379000.0000, N'MTLT_9.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (47, N'Màn hình Dell E2720H -Thế Giới Laptop', N'Thông số sản phẩm
Kích thước: 27 inch
Tấm nền: IPS (In-Plane Switching)
Độ phân giải: Full HD (1920x1080)
Tốc độ làm mới: 60Hz
Đọ sáng: 300 cd / m²
Thời gian đáp ứng: 8 ms typical (Normal) 5 ms typical (Fast)
Cổng kết nối: 1 X VGA, 1 X DisplayPort 1.2', 5849000.0000, N'MTLT_10.jpg', NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (48, N'Bộ Máy Ảnh Nikon 1 J1 -JN Camera', N'Nằm trong phân khúc máy ảnh mirrorless, Nikon 1 J1 sở hữu ngoại hình nhỏ gọn, thiết kế đơn giản nhưng tích hợp nhiều tính năng mạnh mẽ và tiện dụng bên trong.
Với thiết kế gọn nhẹ, ngàm ống kính nhỏ không cồng kềnh, Nikon 1 J1 cho cảm giác cầm máy thoải mài để sử dụng tốt trong thời gian dài mà không mỏi tay. Sử dụng J1 bắt buộc phải dùng tay trái đỡ ống kính, do vậy tuy không có gờ tay phía trước nhưng cũng không ảnh hưởng đến việc cầm máy chắc chắn hơn.
Thời gian khởi động máy là 1.5 giây và thời gian khởi động cho đến khi bấm máy kiểu đầu tiên là 2 – 2.25 giây, đây cùng là khoảng thời gian khởi động trung bình của đa số sản phẩm máy ảnh khác.
Thử nghiệm khả năng chụp hình liên tiếp của J1 cho thấy, máy có thể chụp liên tiếp 5 khung hình/giây nhưng bộ đệm của máy chỉ chứa 12 ảnh, sau đó phải dừng lại vài giây rồi mới tiếp tục. Dĩ nhiên, đèn flash trên máy không hỗ trợ cho chế độ này.
Khả năng lấy nét trên J1 rất đáng kinh ngạc, máy lấy nét êm du trong thời gian chỉ 0.20 giây và lấy nét liên tục khi thay đổi vị trí. Thời gian trễ màn trập trên J1 là 0.01 giây, khá tốt so với máy ảnh cùng phân khúc.
Sử dụng chế độ chụp ảnh tự động trên J1 nhận thấy, trong những tình huống thiếu sáng một chút, J1 lựa chọn hình ảnh có tốc độ màn trập thấp hơn là để hình ảnh với ISO cao, nhằm tránh hạt nhiễu cho hình ảnh. Kết quả hình ảnh với chế độ này cho màu sắc chân thực với độ tương phản cao.
Khả năng tự động cân bằng trắng sử dụng trong tất cả các chế độ chụp và hoạt động hiệu quả trong nhiều nguồn sáng ngay cả với đèn sợi đốt.
Chất lượng video của J1 rất tốt, đặc biệt khi xem lại trên màn hình máy tính, màu sắc hiển thị trung thực với độ phân giải cao. Những đoạn video tốc độ chậm 400 và 1200 khung hình/giây cho hiệu ứng thú vị, đạt tỉ lệ 08:03 với chất lượng video HD sắc nét.
Khả năng khử nhiễu của J1 ở mức trung bình, máy khử nhiễu khá tốt đến ISO 400, nhưng đến ISO 800 và 1600 hình ảnh xuất hiện nhiều hạt nhiễu và bắt đầu mất một vào chi tiết nhỏ. Đến ISO 3200, hạt nhiễu xuất hiện nhiều và dễ dàng thấy màu sắc sai lệch và mất nhiều chi tiết của hình ảnh.
Về tuổi thọ pin, Nikon cho thông số 230 kiểu ảnh cho pin sạc đầy, một con số khá khiêm tốn với máy ảnh ống kính rời. Và kết quả chúng tôi dùng thử J1, pin máy cung cấp năng lượng cho là 213 kiểu ảnh với 20 video trung bình 20 giây không sử dụng đèn flash. Do vậy, với những buổi dã ngoại, đi chơi dài và quay video nhiều, bạn nên có một pin dự phòng để tránh gián đoạn cuộc vui.

Sản phẩm hoạt động hoàn hảo, ống kính không xước mốc rễ tre.
Phụ kiện kèm theo: Pin, sạc, thẻ nhớ, dây đeo, cáp kết nối máy tính.
Bao test 7 ngày, đổi trả nếu xảy ra lỗi kĩ thuật của nhà sản xuất.
Bảo hành 3 tháng.
 JN Camera
LH Tư Vấn : 0.3.6.7.8.9.7.7.1.7
z.a.l.0: 0.3.6.7.8.9.7.7.1.7
#nikon#mayanhgiare#nikonj1#mayanhnikon#J1#mirroless#nikon1', 2790000.0000, N'MAQP_1.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (49, N'Camera Hành trình KAW 4K Ultra', N'• Máy có case chống nước cho phép quay ở độ sau 30m 
• Dung lượng Pin 900mAh cho phép quay 0.5h liên tục 
• Quay siêu nét - Tích hợp với xe máy, mũ bảo hiểm, gương chiếu hậu.... 
• Kết nối wifi trực tiếp với điện thoại bằng phần mềm 
• Thiết kế nhỏ gọn giúp bạn mang theo mọi lúc mọi nơi 
• Màn hình : 2-inch LTPS LCD. 
• Phạm vi điểm ảnh: 1200 vạn điểm ảnh 
• Thời gian sạc: 3 tiếng 
• Nhiệt độ thích hợp: -10độ - 70độ 
• Hệ điều hành hỗ trợ : Windowsxp/VistaorAbove/Win7/Mac os.', 532000.0000, N'MAQP_2.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (50, N'Nắp Kim Loại Bảo Vệ Ống Kính', N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày
☚ Tất cả các sản phẩm trong kho đều có sẵn !! ☛ =
☜ Sản phẩm chất lượng cao ☝
☟ Bao bì tốt ✌
Chúng tôi sẽ sắp xếp vận chuyển trong thời gian sớm nhất！ Giao hàng nhanh (từ Trung Quốc) trừ một số ngày lễ đặc biệt.
 ♔ ♕ ♖ ☻
Đặc điểm:
Được làm từ chất liệu hợp kim cao cấp, sản phẩm này rất chắc chắn và bền.
Bảo vệ các phần phía trước của ống kính khỏi nước, bụi và trầy xước.
Trọng lượng nhẹ và kích thước nhỏ, dễ dàng mang theo và sử dụng.
Phù hợp với Fujifilm X100 X100S X100T.
Thích hợp để bảo vệ ống kính máy ảnh / máy quay kỹ thuật số của bạn, một sự lựa chọn tốt cho bạn.

Thông tin sản phẩm:
Tình trạng: 100% sản phẩm mới
Loại sản phẩm: Nắp trước ống kính
Chất liệu: hợp kim
Màu sắc tùy chọn: Đen, Bạc
Thích hợp: Dành cho Fujifilm X100 X100S X100T
Kích thước: Xấp xỉ 5,8 * 1,2 cm / 2,3 * 0,5 inch
Trọng lượng xấp xỉ. 12g / 0.4oz
Gói hàng bao gồm:
1 * Nắp ống kính
#LensCap#LensFrontCap#CameraFrontCap#MetalLensCap#CameraLensCap', 90000.0000, N'MAQP_3.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (51, N'Hood Vuông Haoge LH-X54 Dành Cho Máy Ảnh Fujifilm', N'Hood Haoge LH-X54 for Fujifilm X100 Series

Thiết kế cho máy Ảnh FujiFilm Fuji X100V X100F X100T X100S X100 X70.
Giúp Chặn ánh sáng đi lạc và gây ra hiện tượng flare không mong muốn
Bảo vệ mặt trước ống kính khỏi những va chạm nhỏ.
Chất liệu kim loại cao cấp, bền bỉ với thời gian.
Vẫn sử dụng cùng với filter 49mm

Lưu Ý: Bên Trong Hộp 
- nilong bọc sản phẩm
- Ring gắn được Filter ( kèm vòng cao su )
- Hood vuông Lh-X54', 320000.0000, N'MAQP_4.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (52, N'Máy ảnh digital camera XDV PRO 4K', N'Máy ảnh XDV PRO

Tóm tắt sản phẩm:

- Kích thước cảm biến: 1 inch

- Màn hình 3.0 inch

- Hệ thống lấy nét lai

- ISO 160 - ISO 12800

- Tốc độ chụp liên tiếp nhanh nhất thế giới: 20fps

- Quay video 4K 24fps, Full HD 120/60fps, HD 240/120/60fps

- Kết nối: USB, Micro HDMI, WIFI, NFC

- Ống kính:cố định F/32 , f= 7.36MM

- Màn hình LCD 3 inch 1.04 triệu điểm ảnh

- Loại màn hình: có khả năng xoay lật

- Kết nối wifi với điện thoại

- Trọng lượng 231g

-Ngôn ngữ : Đức/ý/latvia.Ba lan.Romania/Tiếng anh/nga/Bồ đào nha/Trung', 432000.0000, N'MAQP_5.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (53, N'Máy ảnh chụp phim Fool135', N'♥♥ Giới thiệu cửa hàng ♥♥

Chào mừng người mua, xin chào, chào mừng bạn đến với cửa hàng của chúng tôi Chúng tôi là cửa hàng nhà máy đến từ Trung Quốc đại lục, và sản phẩm được sản xuất bởi nhà máy Hợp tác của chúng tôi, với chất lượng tốt và giá thấp.
Chúng tôi chủ yếu tham gia vào tất cả các loại phụ kiện thời trang, bao gồm phụ kiện tóc, dây buộc tóc, kính và phụ kiện, phụ kiện điện tử và các vật dụng khác.

♥♥Mô tả sản phẩm:
1. Tên: Máy ảnh phim chống thấm nước
2. Chất liệu: nhựa ABS
3. Ống kính: F / 8 28mm
4. Kích thước: 100 * 65 * 35mm
5. Màn hình: 1/100 giây
6. Trọng lượng: 145g
7. Sử dụng phim: kích thước phim 135
8. Lưu ý: Gói 1 không có phim và cần mua riêng, Gói 2 gồm 8 phim, quý khách có nhu cầu mua phim riêng vui lòng liên hệ.

♥♥ Các câu hỏi chung:
1. Sản phẩm có sẵn trong kho không?
-Ừ, Tất cả các sản phẩm của chúng tôi đều có sẵn trong kho.

2. Bao bì có an toàn không?
-Chúng Tôi sẽ bọc sản phẩm bằng màng bong bóng và cho vào thùng carton làm bằng chất liệu cứng đặc biệt nên việc đóng gói rất an toàn.

3. Tôi nên làm gì nếu sản phẩm bị hư hỏng hoặc thiếu giao hàng?
-Hãy Liên hệ ngay với bộ phận chăm sóc khách hàng của chúng tôi, và chúng tôi sẽ giải quyết những vấn đề này một cách hoàn hảo cho bạn.

4. Phản hồi
-Nếu Bạn thích sản phẩm của chúng tôi, xin vui lòng cho chúng tôi đánh giá năm sao. Mọi thắc mắc vui lòng liên hệ với chúng tôi để được phản hồi.', 532000.0000, N'MAQP_6.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (54, N'Máy ảnh kỹ thuật số mini ', N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày

Mô tả: 
 
 Loại sản phẩm: Camera
 Camera cho bé này là một sản phẩm kỹ thuật số được thiết kế đặc biệt dành cho bé với màn hình LCD độc đáo 2.0 inch, vỏ silicon mềm thân thiện với môi trường và hình ảnh và video độ phân giải cao.
 Phù hợp cho sinh nhật, Giáng sinh, quà tặng ngày lễ cho bé trai và bé gái từ 3 ~ 8 tuổi.
 Bé có thể tận hưởng niềm vui khi chụp ảnh và camera này có thể phát huy trí tưởng tượng của bé rất tốt, là một món đồ chơi tuyệt vời cho bé khi đi ra ngoài du lịch hoặc quay phim hàng ngày.
 
 Kích thước: 83 * 61 * 48mm
 
 Khối lượng: 0,65kg
 
 Kích thước màn hình: 2.0 inch
 
 Loại màn hình: Toàn màn hình IPS
 
 Độ phân giải ảnh: 8 triệu pixel
 
 Điện áp sạc: 5V - 1A
 
 Thời gian sạc: 2 giờ
 
 Dung lượng pin: 1000 mAh (làm việc 4 - 6 giờ)
 
 Loại pin: Pin lithium polymer
 
 Độ phân giải video: 1920x1080p
 
 Độ phân giải ảnh camera: 3624 * 2448
 
 Hỗ trợ thẻ TF: Tối đa 32G (bao gồm thẻ TF 16G)
 
 Chỉ cần có 5 chức năng
 
 Chụp ảnh, Cài đặt, Quay video, Chơi game, Nghe nhạc để sử dụng, dễ dàng cho bé sử dụng. Kết nối với máy tính của bạn bằng cáp USB (có bao gồm) hoặc đầu đọc thẻ để tải xuống tất cả các tác phẩm của bạn.
 
 Lời khuyên:
 
 Camera cho bé này hỗ trợ tối đa cho thẻ nhớ 32 GB, yêu cầu thẻ micro SD, sau khi ghi xong, hãy tháo thẻ nhớ, lắp vào đầu đọc thẻ để xem video trên máy tính của bạn. Vui lòng định dạng thẻ trước khi sử dụng
 
 Camera chống nước.
 
 Do thời gian vận chuyển dài, pin của camera cho bé sẽ ở mức năng lượng thấp, vui lòng sạc trước khi sử dụng, không bao gồm bộ sạc.
 
 Gói hàng bao gồm: 
 
 1 x Camera cho bé
 
 1 x Cáp USB
 
 1 x Dây buộc
 
 1 x Hướng dẫn sử dụng
 
 Lưu ý:
 
 Do hiệu ứng ánh sáng màn hình, màu sắc thực tế của sản phẩm thật có thể có đôi chút chênh lệch.', 330000.0000, N'MAQP_7.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (55, N'Máy ảnh kỹ thuật số X5S', N'Mô tả 
Tính năng sản phẩm: ảnh, video, chơi trò chơi, đồ chơi

Độ phân giải Video × 4608 * 3456

Độ phân giải ảnh – 1920 * 1080

Dung lượng pin - 600mAh

Màn hình: 2.0 (bao gồm bốn đèn của phim bảo vệ mắt IPS)

Điểm ảnh: 2000W

Thời gian sạc ''2-3 giờ

Thời gian làm việc ''3-6 giờ

Hỗ trợ tối đa thẻ nhớ: 32GB

Kích thước sản phẩm: 10 * 7 * 5cm

Kích thước gói: 14,5 * 13,5 * 5,5cm

Trọng lượng sản phẩm đơn: 280g

Sạc điện áp hiện tại “5V ''1A

Hỗ trợ đa ngôn ngữ: tiếng Trung, tiếng Anh, tiếng Nhật, tiếng Nga, tiếng Tây Ban Nha, tiếng Pháp và hơn 20 ngôn ngữ
Thông số kỹ thuật ''
Tính NĂNG
1.Màn hình ips HD 2 inch, bảo vệ mắt trẻ em.
2.Ống kính kép HD, một phím chụp ảnh thông minh. trẻ em cũng có thể chụp kiệt tác.
3.Thiết kế nhỏ và chói
4.Tay thoải mái hơn.
5.Dễ dàng vận hành thiết kế.
6.Phù hợp hơn với thói quen của trẻ em.
7.Chế độ chờ siêu lâu. được sạc đầy.
8.Sinh nhật hoàn hảo; Món quà Giáng sinh và ngày lễ cho các bé trai và bé gái.Nó là một món đồ chơi tốt cho trẻ em để đi du lịch hoặc ghi âm mỗi ngày.
Gói bao gồm ''
1 * máy ảnh, 1 * cáp sạc, 1 * sách hướng dẫn, 1 * dây buộc', 450000.0000, N'MAQP_8.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (56, N'Máy ảnh sony A6000  -JLWin', N'Cảm biến: Cảm biến hình ảnh 24,3 MP Exmor ™ APS HD CMOS
AF: Hệ thống AF kết hợp với 25 điểm lấy nét phát hiện tương phản và 179 điểm lấy nét theo pha
Video: Quay phim Full HD lên đến 1080p @ 60 khung hình / giây
Dung lượng pin: Lên đến 420 hình ảnh
LCD: LCD 3″ có thể nghiêng với 921K điểm
EVF: Kính ngắm OLED với 1.440K điểm
Nhận dạng cảnh thông minh và phát hiện khuôn mặt: Có
Tốc độ chụp liên tục: Lên đến 11 FPS ở độ phân giải 24,3 MP đầy đủ
Khả năng WiFi với NFC: Có', 670000.0000, N'MAQP_9.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (57, N'Túi xách tay thời trang Sony', N'👉Túi thời trang, cá tính dành cho Tín Đồ Sony
👉Tiện dụng khi muốn đi du lịch, dạo phố...
👉Sản phẩm có những chi tiết tiêu chuẩn như lớp lót trong giúp bảo vệ chống sốc cho điện thoại, móc treo khóa, ngăn đựng smartphone, tai nghe, thẻ nhớ tiện dụng
👉Chất liệu: Vải dù
👉Khối lượng: 250g
👉Kích thước: dài 23cm * rộng 6cm * cao 20cm
------ĐỊA CHỈ SHOP TÍN ĐỒ SONY-----
⛩Địa Chỉ 1: Số 44 ngõ 24 Nguyễn Công Hoan, Ngọc Khánh, Ba ĐÌnh, Hà Nội (Ô Tô vào được)
⛩Địa Chỉ 2: Số 44 ngõ 477 Kim Mã, Ba Đình, Hà Nội
☎️Sđt: 0969849848
🌐https://tindosony.com
🌐https://www.facebook.com/shoptindosony
#tuicamtaysony #quatangsony #tindosony #sonystore #sale', 100000.0000, N'MAQP_10.jpg', NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (58, N'Đồng Hồ Thể Thao Casio G-SHOCK GM-2100', N'Chào bạn! Rất vui được chào đón bạn đến với shop!
Bạn nhớ ghé thăm shop mỗi ngày để cập nhật những sản phẩm mới nhất nha
Shop luôn cam kết đảm bảo đạo đức kinh doanh với giá cả hợp lý, luôn mang đến cho bạn sự hài lòng với những sản phẩm chất lượng và được kiểm tra kỹ càng trước khi giao cho khách.
Đừng ngần ngại mà hãy liên hệ ngay với shop nếu bạn có bất kỳ thắc mắc nào nha
Chúc bạn một ngày tốt lành và đừng quên đánh giá 5 sao nếu bạn thích sản phẩm nhé
Cám ơn bạn đã đến thăm! Hy vọng bạn có một trải nghiệm mua sắm tuyệt vời tại shop!

 Tuyệt vời Tuyệt vời Tuyệt vời Tuyệt vời Tuyệt vời Tuyệt vời', 165000.0000, N'DH_1.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (59, N'Đồng Hồ Nam Chính Hãng CRNAIRA TD1 ', N'-Thương hiệu: CRNAIRA JAPAN
- Kiểu máy: Quartz (máy Nhật)
- Chất liệu vỏ: Thép không gỉ
- Chất liệu dây: Thép không gỉ
- Chất liệu mặt trước: Kính cứng pha khoáng, tráng shaphire
- Kích thước mặt: 41 x 9 mm (Rộng x dày)
- Kích thước dây: 22 x 230mm (Rộng x dài)
- Khả năng chịu nước: 3 ATM (rửa tay, đi mưa đều ok... Nên tránh tiếp xúc với hóa chất như xà phòng, nước tẩy rửa, không mang khi bơi lội... của bền tại người nâng niu giữ gìn)
- Phù hợp đeo đi làm, đi học, dạo phố, xem phim, dự tiệc
- Bảo hành: 12 tháng

BỘ SẢN PHẨM BAO GỒM 
1.	Đồng hồ chính hãng 100%
2.	Tặng kèm pin dự phòng (trị giá 40k)
3.	Hộp đựng
4.	Thẻ bảo hành 

HƯỚNG DẪN CÁCH ĐẶT HÀNG:
- Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 màu khác nhau, để được freeship
- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng
- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán”

❤ Quy định Bảo hành: đổi trả trong 7 ngày nếu hàng bị lỗi do nhà sản xuất như là hết pin, rớt kim, hư khóa, đồng hồ không chạy. 
Bảo hành pin và máy trong 6 tháng. Bị bất cứ vấn đề gì bạn cứ inbox shop sẽ luôn tư vấn và hỗ trợ bạn
❤ Thời gian giao hàng : từ 1-5 ngày tùy tỉnh , huyện hay nội thành giao nội tỉnh HCM – HN thường nhanh hơn, tỉnh và huyện thường lâu hơn 1 chút 
❤ Về size, dây đồng hồ phù hợp cho khách : Tất cả đồng hồ tại shop khách đều có thể cắt (gỡ mắt) cho vừa với tay khách nhé. Nếu không tự làm ở nhà được thì khách có thể mang ra quầy đồng hồ gần nhất, thợ sẽ cắt cho khách. Phí tầm 10k VND
#A40', 195000.0000, N'DH_2.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (60, N'OPK 8619 Đồng hồ nữ', N'Chào mừng bạn đến với 【 OPK-ol-store】
Chúng tôi cam kết: 100% đồng hồ nguyên bản! Mặt hàng của bạn đã sẵn sàng! Vận chuyển nhanh chóng! Bao bì là tốt!

✅Lô hàng: đơn đặt hàng sẽ được giao trong vòng 12 giờ.
✅Đến: 7-9 ngày làm việc sau khi vận chuyển.
✅Sau khi bán: Nếu đồng hồ của bạn có vấn đề về chất lượng hoặc bạn không hài lòng. Chúng tôi cung cấp một khoản hoàn lại đầy đủ.
✅Chào mừng người bán buôn và người bán lại
✅Hy vọng bạn thích mua sắm của bạn.

【Sản Phẩm sản phẩm】 ↓
Thương hiệu: OPK 8619
Trọng lượng đồng hồ: 53g
Đường kính vỏ: 28mm
Độ dày quay số: 9mm
Chiều rộng của dây đeo: 16mm
Chiều dài của dây mang: 200mm


Sự phòng ngừa các cách❌: Tôi
-Xin Vui lòng không va đập và để đồng hồ tiếp xúc với sự ăn mòn mạnh, nhiệt độ cao hoặc từ trường.
-Xin Vui lòng tránh dung môi, chất tẩy rửa, chất tẩy rửa công nghiệp, keo, sơn.
- Đồng hồ có dây đeo cổ tay có thể dễ dàng trầy xước nên bạn nên đeo đồng hồ.
-Không Điều chỉnh nút hẹn giờ khi đồng hồ bị ướt.
-Xin Vui lòng không đặt đồng hồ thay đổi nhiệt độ đột ngột.
-Xin Vui lòng không nhấn nút và đặt nó vào nước.

【Giá Đỡ mục】
1 x Đồng hồ gốc
1 x hộp quà tinh tế (quà tặng miễn phí)
1 x Hướng dẫn sử dụng
1 x thẻ OPK gốc

【Khách Hàng được hỗ trợ 100%】
1. chúng tôi là nhà sản xuất ban đầu.
2. tất cả các mặt hàng là 100% mới và nguyên bản.
3. chúng tôi cố gắng hết sức để cung cấp các sản phẩm chất lượng cao nhất với giá cả hợp lý.
4. tận tâm để mang lại trải nghiệm khách hàng tốt chắc chắn!
5. sự hài lòng của khách hàng luôn quan trọng đối với chúng tôi.', 110000.0000, N'DH_3.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (61, N'Đồng hồ nữ mặt tròn Beirsute ', N'Mô tả sản phẩm:
- Chất liệu: Da
- Đường kính: 25mm
- Chiều dài dây: 21cm, rộng: 1cm
- Chống nước: 3ATM (rửa tay, đi mưa)
- Thời gian bảo hành: 7 ngày lỗi do nhà sản xuất
Mọi vấn đề cần giải đáp thắc mắc hãy chat ngay với shop để được hỗ trợ nhanh nhất
___________________________
#dongho #donghonu #đồnghồnữ #donghokimloai #donghomatvuong #donghomattron #donghogiare #donghodep #donghochotaynho #đồnghồchotaynhỏ #đồnghồkimloại #donghochinhhang #donghomatnho #donghodeotay #donghomatto #donghochotayto #donghoda #donghonudayda ', 79000.0000, N'DH_4.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (62, N'Patek Đồng Hồ Đeo Tay Thạch Anh', N'Đồng hồ là một thiết bị không thể thiếu cho một người thành công. Chức năng của nó không chỉ để xem thời gian mà còn thể hiện gu thẩm mỹ và cá tính của một người. Mọi người chuyên nghiệp đều muốn có một hào quang quý phái trên cổ tay, và cao quý và sang trọng thậm chí khiến mọi người ngạt thở. Đặc biệt là những thương hiệu đồng hồ nổi tiếng thế giới hàng đầu, có thể sở hữu chúng luôn theo đuổi những ưu tấu của những người ưu tú trong nơi làm việc.', 140000.0000, N'DH_5.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (63, N'Đồng hồ đeo OPK 8105C', N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày
Chào mừng bạn đến với 【OPK-Official-Store】
Chúng tôi cam kết: Đồng hồ chính hãng 100%! Hàng có sẵn! Chuyển phát nhanh! Bao bì đẹp!
✅Giao hàng: Đơn hàng sẽ được chuyển trong thời gian sớm nhất.
✅Hậu mãi: Nếu đồng hồ của bạn có bất kỳ vấn đề gì về chất lượng hoặc bạn không hài lòng, vui lòng liên hệ với chúng tôi.
✅Người bán sỉ & người bán lại được chào đón.
✅Hy vọng bạn thích chuyến mua sắm của bạn.
【Chức năng】
         ↓
Ngày tự động 
Không thấm nước 30m 
Phát sáng trong bóng tối
【Gói hàng bao gồm】
1 x Đồng hồ gốc
1 x Hộp đồng hồ màu đen
1 x công cụ tùy chỉnh
1 x Hướng dẫn sử dụng 
1 x thẻ OPK chính hãng
【Đảm bảo】
1.Nếu đồng hồ của bạn có bất kỳ vấn đề chất lượng nào hoặc bạn không hài lòng, vui lòng liên hệ với chúng tôi. 
2.Nếu bạn có bất kỳ câu hỏi nào, bạn có thể liên hệ với chúng tôi
【Đặc điểm】
          ↓
Thương hiệu: OLEVS 8105
Bộ máy đồng hồ: Bộ máy thạch anh Nhật Bản
Kính đồng hồ: Kính tinh thể cứng có lớp màng phủ
Chất liệu vỏ: Thép không gỉ
Chất liệu dây đeo: Thép không gỉ
Hình dạng mặt đồng hồ: Tròn
Chế độ hiển thị: Loại kim chỉ
Với một nút: Nút bướm
 Nam ↓ Phụ nữ ↓
Kích thước mặt：tròn
Trọng lượng đồng hồ: 95 g 52g
Đường kính mặt đồng hồ: 36,5 mm 25 mm
Đường kính dây : 11 mm 11 mm
Chiều rộng dây đeo: 20 mm 14 mm
Chiều dài dây đeo: 210 mm 190 mm
Lưu ý
1. Xin vui lòng cho phép sai lệch kích thước nhỏ do đo lường thủ công.
2. Chống nước thông thường 30m: rửa tay, sử dụng hàng ngày không thấm nước, không thích hợp cho bơi lội, ngâm nước và lặn sâu.
Dịch vụ chăm sóc khách hàng 100%:
1.Chúng tôi là nhà sản xuất chính hãng.
2.Tất cả các sản phẩm là 100% mới và chính hãng.
3.Chúng tôi cam kết cung cấp cho bạn sản phẩm với chất lượng cao nhất với giá cả hợp lý. 
4.Chắc chắn tận tâm để cung cấp trải nghiệm khách hàng tốt! 
5.Sự hài lòng của khách hàng là mục tiêu theo đuổi quan trọng đối với chúng tôi như mọi khi. 
6.Mọi người có thể yên tâm mua hàng của chúng tôi để nhận được sản phẩm chính hãng với dịch vụ chăm sóc khách hàng tuyệt vời của chúng tôi.
Lưu ý: Các sản phẩm có chất liệu vàng, kim cương, đá quý trong shop đều là xi mạ/ nhân tạo ', 160000.0000, N'DH_6.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (64, N'Đồng Hồ Đeo Tay Màu Xanh Dương ', N'Chiều dài dây đeo 25cm, Đường kính quay số 4cm
Các tính năng đặc biệt: Trang trí
Loại hiển thị: Con trỏ
Đối tượng áp dụng: chung
Phong cách: Bình thường
Chống thấm nước: Không
Loại chuyển động: Quartz', 150000.0000, N'DH_7.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (65, N'Đồng Hồ Nam nữ HU Cặp Đôi ', N'MTP STORE BIỂU TƯỢNG CHẤT LƯỢNG!
+ CAM KẾT HÌNH ẢNH, MÔ TẢ TÍNH NĂNG CHUẨN
+ BẢO HÀNH 1 ĐỔI 1 NẾU SAI HÀNG HOẶC LỖI
Đồng Hồ Thời Trang Nam Nữ HU Cặp Đôi - Dây Hương Vani Cao Cấp - DH602
* 1 Đổi 1 trong 30 ngày đầu nếu có lỗi (ĐỔI CHIẾC MỚI - KHÔNG CẦN ĐỢI SỬA)
* Bảo hành sửa chữa 12 tháng với sản phẩm của shop
* Cam kết sản phẩm chuẩn hình, có video
( Khách hàng muốn kiểm tra trước inboxx shop để được hỗ trợ )
* Hotline: ZALO : O (TƯ VẤN - HỖ TRỢ - BẢO HÀNH)
THÔNG SỐ SẢN PHẨM : Đồng hồ HU
• Kiểu máy : Pin nhật
• Kích thước mặt : Nam 42mm / Nữ 36mm
• Kích thước đây :Nam 220 x 20mm / Nữ 220 x16mm
• Chất liệu dây: Dây cao su
• Chất liệu khung : Thép không gỉ.
• Kính : Kính Mineral chống xước
• Chống nước : KHÔNG
• Bảo hành máy 12 tháng.
BỘ SẢN PHẨM BAO GỒM
- 1 Đồng hồ
- 1 Hộp đồng hồ đi kèm
- 1 Pin dự phòng
TRƯỜNG HỢP KHÔNG ĐỦ ĐIỀU KIỆN BẢO HÀNH
 • Vỡ do tai nạn trong quá trình sử dụng.
 • Trầy xước về dây hoặc mặt kính bị trầy xước
 • Tự ý mở ra can thiệp sửa chữa trong thời gian bảo hành

THỜI GIAN GIAO NHẬN 02-04 Ngày làm việc
- Lưu Ý : Thời gian giao nhận không tính các ngày cuối tuần và lễ, tết', 230000.0000, N'DH_8.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (66, N'Đồng hồ nam omega', N'THÔNG TIN SẢN PHẨM 
- Tình trạng: Mới 
- Nguồn gốc: Nhật Bản. 
- Kích thước mặt đồng hồ: 40mm (nam)
- Kích thước dây đồng hồ: 20mm (nam) 
- Chống nước: 5ATM (Có thể mang đi bơi được) 
- Loại: Dùng kim quay hiển thị, lịch ngày tiện lợi. 
- Chất liệu mặt: Kính Sapphire chống xước tuyệt đối 
- Chất liệu vỏ: Thép không gỉ cao cấp. 
- Năng lượng sử dụng: Pin sử dụng trên 3 năm. 
- BẢO HÀNH: 24 tháng kèm thẻ bảo hành. ◈ 
BỘ SẢN PHẨM GỒM: ✔ Đồng hồ cao cấp ✔ Hộp đựng sang trọng ✔ Thẻ bảo hành của shop ✔ Quà tặng: 1 vòng tỳ hưu và 2 pin đồng hồ ▶️
CAM KẾT đồng hồ chất lượng, giống hình ảnh, nói KHÔNG với ảnh mạng, photoshop. 
- Đổi trả hàng và hoàn tiền trong vòng 7 ngày miễn phí. 
- Đồng hồ bị lỗi, hỏng vui lòng liên hệ shop để được bảo hành và đổi trả sớm nhất. ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- ▶️
Tất cả đồng hồ ở shop đều có hộp và thẻ bảo hành. Tặng kèm pin dự trữ sử dùng trên 2 năm. 
Thank you và nhớ ĐÁNH GIÁ shop 5* và THEO DÕI shop để cập nhật những mẫu mới và hot nhất nhé mọi người !!! 
#dongho789 #donghonam #đồnghồ #đồnghồnam #đồnghồđẹp #đồnghồdâythép #đồnghồthờitrang #dongho #đồnghồdâythép #đồnghồdâykimloại #đồnghồnamcasio #đồnghồrolexnam #đồnghồkim #đồnghồnamdâykimloại #đồnghồnamđẹp #donghogiatot #donghodoanhnhan #đồnghồnam #donghonam #dongho #đồnghồ #donghogiare #đồnghồgiárẻ #chốngnước #đồnghồ6kim #đồnghồthểthao #đồnghồđiệntử #saleoff', 179000.0000, N'DH_9.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (67, N'Đồng Hồ Nam ORT034', N'👉 👉Xin chào Quý khách! Chào mừng bạn đến với cửa hàng của chúng tôi - → (→⌔ᵔ๑)
--------------------------------------------------------------------------------------------------------------
Tôi rất vui vì bạn có thể đến cửa hàng của tôi. Cửa hàng này đảm bảo rằng tất cả các sản phẩm là chất lượng cao và có một đảm bảo. Bạn có thể vào cửa hàng này để tìm kiếm sản phẩm bạn muốn. Có nhiều sản phẩm đang chờ bạn ~
--------------------------------------------------------------------------------------------------------------
👍 👍Mô tả Sản phẩm:

Chất liệu: PVC
Thể loại: Đồng hồ
Đường kính quay số: 46mm
Chiều dài dây đeo: 21cm
Độ dày: 10mm
Thời gian bảo hành: Không có
Chống thấm nước: hơi chống thấm nước
Màu sắc: trắng, xanh lá, xanh dương, đen, hồng
Phong cách: bình thường
Thích hợp cho: Hàng ngày, mua sắm, dự tiệc, hẹn hò, tặng quà
Gói bao gồm: 1 * đồng hồ "

♥ ♥ ♥Nếu bạn đặt hàng, tôi sẽ tặng bạn một món quà nhỏ miễn phí! ♥ ♥ ♥

★ Lưu ý: Do điều kiện ánh sáng và chế độ cài đặt màn hình nền màu sắc thực tế của sản phẩm sẽ có đôi chút khác biệt với hình chụp.
★ Kích thước được đo bằng tay. Vui lòng cho phép sai số nhỏ 1-3 cm do sản phẩm được đo đạc bằng phương pháp thủ công.
★ Vui lòng tham khảo sản phẩm thực tế, Xin cảm ơn!
--------------------------------------------------------------------------------------------------------------
😘Bạn thân mến: Vui lòng liên hệ với chúng tôi kịp thời nếu có vấn đề với sản phẩm đã nhận!!!', 350000.0000, N'DH_10.jpg', NULL, NULL, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (68, N'Bộ ga gối 3 món poly coton', N'Bộ 3 món ga và 2 vỏ gối đầu
Chất liệu: Cotton Poly sang trọng, mềm mại không phai màu, không co rút sợi, dễ giặt ủi bằng máy và rất bền 
Kích thước ga nệm : 1m6x2m , 1m8x2m
LƯU Ý : 
- Ga bọc cho nệm dưới 10cm, trên 10cm lấy lên thêm 1 kích thước. VD : nệm 1m6 cao 20cm lấy ga 1m8 bọc vừa.
- Ga 1m2x1m9, 1m4x2m, 2mx2m2 ib shop gửi link tư vấn và đặt hàng.

Đặc tính: Mềm mại, thoáng mát, thấm hút mồ hôi tốt, nhẹ. 
Họa tiết : Hoa văn trên vải sử dụng công nghệ thêu hiện đại cho màu sắc bền lâu, tươi trẻ
Sản Xuất : Sản xuất trực tiếp tại xưởng - hàng Việt Nam Gia Công

Shop CAM KẾT 
Sản phẩm: đúng như ảnh sản phẩm về chất liệu, họa tiết và kích thước
Về giá cả : tốt nhất trên thị trường
Về dịch vụ: phục vụ khách hàng tận tâm và chu đáo nhất
Thời gian chuẩn bị hàng: Hàng có sẵn, thời gian chuẩn bị tối ưu nhất

Quyền Lợi của Khách Hàng 
Chính sách bao đổi trả hàng miễn phí khi sản phẩm kém chất lượng và không giống hình, nhầm size, số lượng 
Ưu tiên khách hàng follow, cập nhật liên tục mã giảm giá, combo khuyến mãi, mua kèm deal sốc,....

#ga #goi #drapgiuong #poly #cotton #gagoi #gagiuong #bogagiuong #ganem #changa #drapnem #dem #chandrap #ragiuong #ragiuongcotton #gagoipoly #changagoidem #gadem 
Hàng do xưởng nhà mình tự sản xuất
sỉ 0963796311
để được giá tốt nhất tại xưởng làm ra nhé mọi người', 90000.0000, N'NCDS_1.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (69, N'Màn chụp tự bung đỉnh vuông ', N'Nếu anh chị đang muốn tìm kiếm cho gia đình mình 1 mẫu màn/mùng giá tốt và vẫn đảm bảo chất lượng cao. Hãy yên tâm đặt niềm tin ở Kiều Phi ạ. Mẫu này bên em làm 2 khóa kéo bản to (khóa 5, k làm khóa 3 như nhiều xưởng) ra vào rất tiện +  vải màn cam kết mắt nhỏ bền nhất trên thị trường hiện nay.  Nếu nhận hàng mà không ưng ý, a/c cứ ấn trả hàng shop vui vẻ nhận lại ạ !!
➖  Bảo hành khung 18 tháng. Đổi trả "MIỄN PHÍ 2 CHIỀU " nếu có lỗi của nhà sản xuất. Giá bán trên shopee cực rẻ, chỉ ngang với giá sỉ từ 50 - 200 cái khi mua bên ngoài.
➖  Được sản xuất tại làng nghề may Việt Nam với 20 năm làm màn truyền thống. Chất liệu cao cấp, an toàn cho người sử dụng, thân thiện với môi trường. Được các thợ lành nghề chọn lọc và may rất tỉ mỉ.
💞 MÔ TẢ MÀN CHỤP KIỀU PHI  💞
➖  Với khí hậu Việt Nam nhiệt đới ẩm gió mùa - nhiều muỗi, con trùng, dịch sốt xuất huyết hàng năm... Mỗi gia đình đều nên sắm sẵn " màn chụp tự bung " trong nhà. Dùng ngủ trên giường, dưới đất, mang đi du lịch đều được.. Màn gấp gọn bỏ vào túi mang đi bất cứ đâu, rất tiện ạ
➖  Mẫu đỉnh vuông ( = đỉnh rộng) : chiều cao 1,7m đỉnh mở rộng gần bằng với đáy, đứng không chạm đầu, di chuyển thoải mái. Mẫu đỉnh chóp : cao 1m55 phù hợp với không gian nhỏ, trần thấp.
➖  Màn không đáy, được may cẩn thận, chần kỹ, sắc cạnh. Kết hợp với 4 góc chun cài vào nệm và khung thép vững chắc, giúp màn chụp kín đáo tuyệt đối, bảo vệ em bé không bị lăn khỏi giường giúp mẹ yên tâm để bé nằm ngủ một mình.
➖  Chất vải tuyn, bền, chắc chắn, lỗ nhỏ, chống mọi loại muỗi dù là nhỏ nhất. Lưu ý là sản phẩm màn/mùng tự bung Kiều Phi nếu có bị rách do vật sắc nhọn thì không thể tự rách toạc ra thêm vì chế độ lưới gai đan xen lẫn nhau. Khác hẳn màn chụp thương hiệu khác.
💞 CAM KẾT : 
➖  Shop đền tiền 200% nếu phát hiện hàng nhái, hàng giả, hàng Trung Quốc ( đặc điểm màn Trung có đáy kín bưng , chất lượng kém , khung làm bằng thép thường nên ọp ẹp và dùng dễ bị gãy, vải màn mỏng mắt lưới to và thô, nhám ... Dùng 1 vài tháng là hỏng ạ... )
------------------------------------------
💞  ĐẶT HÀNG  NGAY HÔM NAY - BẢO VỆ SỨC KHỎE CHO CẢ GIA ĐÌNH 
➖  Địa chỉ :  số 10 lô 7 đền lừ 2 - Q. Hoàng Mai - Hà Nội
➖  Hotline : 0963325228 - 0964752283
------------------------------------------
#màn_chụp , #màn_tự_bung, #mùng_chụp_tự_bung , #màn , #màn_bung, #man_chup_tu_bung, #màn_tự_bung_đỉnh_rộng , #màn_gấp, #mùng, #màn_ngủ, #mùng_chụp, #màn_bung_gấp_gọn, #màn_chùm, #mùng_xếp, #mùng_tự_bung, #màn_trùm
---------------------------------------------
màn chụp , màn tự bung, mùng chụp tự bung, màn, màn bung, màn chụp tự bung, màn tự bung đỉnh rộng, màn gấp', 75000.0000, N'NCDS_2.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (70, N'Combo Ga Gối 3 Món 1m6x2m-mẫu vịt vàng', N'[GIẢM 7.7]Combo Ga Gối 3 Món 1m6x2m-mẫu vịt vàng
sale 7.7 giá hủy diệt luôn nhé 
chọn mẫu ngay trên bài đăng
Thông tin sản phẩm:
1 Bộ gồm: 01 Vỏ ga chun + 2 Vỏ gối nằm
– Sản phẩm có đường may khéo léo, chắc chắn.
– Màu sắc nổi bật, an toàn cho sức khỏe gia đình bạn.
– Dùng để thay đổi cho không gian phòng ngủ thêm phong phú hoặc để dùng kèm với bộ cũ của gia đình bạn giúp thuận tiện thay giặt (nhất là những khi trời nồm, ẩm ướt).
– Màu sắc: Như hình
– Xuất xứ: Việt Nam
– Kích thước ga: 1m6x2m ( PHÙ HỢP VỚI ĐỆM DƯỚI 10CM)
– Kích thước gối:  45x 65cm
– Chất liệu: coton poly
#gagoipoly #gagoi #changagoi #gagoigiare #xakhogagoi #gatraigiuong #gagiuong #gabocdem #gagoicottonpoly
#gagiuongpoly #gagoicotton #gagoicottonpoly
THÔNG TIN CƠ SỞ SẢN XUẤT ,KINH DOANH
Cơ sở sản xuất: Chăn ga gối Tuấn Anh 
Địa chỉ KD: Đội 1 ,thôn Tam Đa , Xã Thanh Văn, Huyện Thanh Oai, Hà Nội
Sản xuất : Gia Công Tại Việt Nam', 50000.0000, N'NCDS_3.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (71, N'Bàn đa năng HAJI tiện lợi', N'Chiếc bàn đa năng của HAJI hẳn là món đồ nội thất không thể bỏ lỡ cho không gian nhà bạn. Với thiết kế tối giản, chú trọng vào chất lượng và công năng sản phẩm, HAJI mang đến sản phẩm bàn đa năng thông minh có thể dùng làm bàn học, bàn làm việc, bàn ăn, bàn trang điểm,... tiện dụng với hai màu sắc lựa chọn và hai phân loại kích thước: dài 80cm và dài 120cm tuỳ thuộc vào nhu cầu sử dụng và diện tích không gian của gia đình bạn, mang đến giải pháp tích hợp hoàn hảo giúp tối ưu không gian.', 110000.0000, N'NCDS_4.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (72, N'Bàn học sinh gấp gọn thông minh', N'Chất liệu: ván nhân tạo
Mục số: cp#416608577019
Phong cách: đơn giản và hiện đại
Phương pháp chế biến: 1
Thương hiệu: khác
Mô hình: 1
Màu sắc: trắng ấm [giao nhanh tận nơi], màu gỗ tếch [giao nhanh tận nơi], màu óc chó nhạt [giao nhanh tận nơi], màu đá trắng [giao nhanh tận nơi], xám [giao nhanh tận nơi], hồng [giao nhanh tận nơi], Đen [giao hàng tận nơi nhanh chóng]
Kích thước: [Kích thước nhỏ] Mô hình kinh tế 30 * 24 * 30cm, [Kích thước trung bình] Mô hình thông thường 40 * 30 * 35cm, [Kích thước lớn] 60 * 35 * 40cm Mô hình hàng ngày, [Kích thước lớn] Mô hình nâng cấp 80 * 35 * 40cm, [Phụ kiện] Mô hình thực tế 3*4*3cm
Có giao hàng tận nơi hay không: giao hàng đến điểm nhận hàng
Có cung cấp dịch vụ lắp đặt hay không: KhôngXin chào! Chào mừng bạn đến cửa hàng của chúng tôi. Tốt mua sắm!
Về mua sắm:
Nếu bạn yêu thích sản phẩm nào nhưng chưa hiểu rõ về chức năng của sản phẩm, vui lòng liên hệ với chúng tôi kịp thời, chúng tôi sẽ giải thích chi tiết về chức năng và thông số của sản phẩm cho bạn, để bạn dễ dàng mua được sản phẩm ưng ý hơn.
1. Tất cả các sản phẩm trong cửa hàng này đều là hàng có sẵn, thời gian giao hàng thông thường là 6-10 ngày, việc giao hàng sẽ bị trì hoãn vì lý do đặc biệt và việc giao hàng sẽ chậm nhất trong vòng 12 ngày.
2. Cửa hàng sẽ cập nhật nhiều sản phẩm mới mỗi ngày để giúp bạn mua được nguồn hàng tốt nhất với giá phải chăng nhất, vì vậy hãy chú ý theo dõi.
3. Chúng tôi sẽ tiến hành kiểm tra chất lượng nghiêm ngặt đối với chất lượng của hàng hóa đã mua, nếu có bất kỳ vấn đề gì về chất lượng, vui lòng
sử dụng tính năng "trò chuyện" để liên hệ với chúng tôi kịp thời và chúng tôi sẽ giải quyết mọi vấn đề hợp lý trong thời gian sớm nhất. tri ân!', 80000.0000, N'NCDS_5.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (73, N'Đồng Hồ LED Để Bàn Báo Thức Điện Tử ', N'Điều khiển bằng giọng nói: vỗ tay hoặc gõ trên bàn để đánh thức đồng hồ báo thức
Ở trạng thái thời gian, nhấn nhanh nút SNOOZE, độ sáng sẽ được đặt theo chu kỳ từ 1 đến 5
22: 00-6: 00 Độ sáng tự động chuyển sang chế độ sáng thấp
Nhấn và giữ nút + trong 3 giây để chuyển đổi chế độ hiển thị
Ở trạng thái thời gian, nhấn và giữ nút SNOOZE trong 3 giây để vào chế độ không làm phiền, tắt màn hình, tắt đánh thức kích hoạt bằng giọng nói và chỉ nhấn bằng tay nút để Đánh thức màn hình.
Chuyển đổi màn hình 12 / 24H: nhấn và giữ phím S, màn hình 12 / 24H có thể được chuyển đổi bằng +/-
Chuyển đổi hiển thị độ C / độ F: ở trạng thái thời gian, nhấn và giữ phím - trong 3 giây để chuyển đổi nhiệt độ Fahrenheit / Màn hình Fahrenheit
Màu cơ thể: Thân đen
Hình dạng: Hình chữ nhật
Từ: Trắng / Xanh / Cam / Đỏ / Xanh lá
Chất liệu của màn hình: Gương
Kích thước: 17 * 7 * 2,5cm
Kiểu cáp USB: 3,5x1,35mm (18198)
Lưu Ý 1: Lấy miếng bảo vệ trên màn hình đồng hồ, nó sẽ sáng hơn. 
Lưu Ý 2: Nó sẽ tắt sau 10 giây khi chỉ được cấp nguồn bằng Pin AAA (Không bao gồm), Nếu bạn muốn màn hình luôn bật, vui lòng cắm sử dụng.

Gói hàng bao gồm:
 1 * dây nguồn x1
 1 * Đồng hồ báo thức x1

Ghi chú:
Ánh sáng chụp và cách hiển thị khác nhau có thể khiến màu sắc của vật phẩm trong ảnh hơi khác so với đồ thật. Sai số cho phép đo là +/- 1-3cm.
Đồng hồ báo thức Đồng hồ điện tử LED Đồng hồ số lớn Số lượng lớn Đèn nền Nhiệt độ Lịch đèn ngủ Mặt bàn đầu giường Trang trí nội thất Sáng tạo', 60000.0000, N'NCDS_6.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (74, N'Nến Thơm Thư Giãn Không Khói Cao Cấp Aroma Menahem', N'=== CAM KẾT CỦA WIACHNN ===
+ Hoàn 100% bao gồm cả phí vận chuyển nếu khách hàng không hài lòng về chất lượng sản phẩm và dịch vụ tư vấn chăm sóc của WIACHNN

I/ THÔNG TIN SẢN PHẨM:  
1/ ƯU ĐIỂM VƯỢT TRỘI:
🌿 Làm từ sáp đậu nành an toàn, thân thiện với môi trường. 
🌿 Độ giống thật của những chiếc nến hình ly kem này có thể khiến bạn lầm tưởng đây là những ly kem thật.
🌿 Nến toả hương thơm ngay cả khi chưa đốt.
🌿 Trọng lượng nến: 50gr 
🌿 Kích Thước: 6.2*4.5cm
🌿 Thời gian đốt liên tục: 12-15h

2/ CÔNG DỤNG:
🌸 Tạo hương thơm, khử mùi hôi, ẩm mốc trong không gian
🌸 Giải tỏa stress, căng thẳng, mệt mỏi, tăng khả năng tập trung
🌸 Tăng cường kháng khuẩn trong không khí

3/ CÁC MÙI HƯƠNG:
✅ WILD BLUEBELL: 
Hương vị từ trái cây, dưa hấu, tầng hương giữa là cỏ xanh kết hợp hoa chuông xanh vô cùng trang nhã, tầng hương cuối là mùi vị từ cây hoắc hương. Tất cả hòa quyện tạo nên 1 mùi hương vừa nhẹ nhàng vừa thanh lịch, mang 1 chút đam mê ẩn bên dưới sự nghiêm nghị.
✅ ENGLISH PEAR & FREESIA: 
Một mùi hương tràn đầy năng lượng, trực tiếp kích thích mọi giác quan. Hương lan trắng nam phi tạo nầng tầng hương chính dịu dàng, trong trẻo, kết hợp cùng hoa hồng, hoa cam và hoa trinh nữ.
✅ BLACK GENTLEMAN: Mùi hương vô cùng sang trọng, thanh lịch mang hơi hướng man mát vào 1 chiều hoàng hôn cuối thu.
✅ AMBER & SMOKE: Hương gỗ và dừa, mùi hương rất dễ chịu, mang hơi hướng thưởng thức mùa hè.
✅ SEA-SALT & SAGE: Kết hợp 3 tầng hương giữa vị man mát từ chanh, hoa hướng dương và cây xô thơm (sage), mang chút phong khoáng và dễ chịu từ biển cả.
✅ ENDLESS SUMMER: Mang hơi hướng ngọt ngào và ma mị từ rừng rậm, hương thơm từ hoa hồng, cam vàng và bay bổng bạc hòa với hoa lan ở hương cuối. 
✅ FRENCH & PEAR:  kết hợp 3 tầng hương giữa mùi anh đào, dưa hấu và lê pháp
 Thơm mát, rất dễ chịu, nốt hương tinh dầu cao, lưu hương tốt.
✅ COOKIES & CREAM:  kết hợp 3 tầng hương giữa mùi mật ong, quế, lúa mì và hạnh nhân, Hương thơm ngọt ngào và ấm, giống mùi bánh cookies và mật ong hòa quyện với nhau
✅ CITRUS & COCONUT: kết hợp 3 tầng hương giữa mùi cam quýt, hổ phách và dừa non, Hương thơm mát sang trọng, nam tính, được kết hợp từ các loại gỗ quý và hoa quả thiên nhiên

4/ CÁCH SỬ DỤNG:
- Kiểm tra độ dài bấc (cắt ngắn nếu bấc dài hơn 0,5cm)
- Thắp nến lần đầu tiên đủ thời gian để bề mặt nến tan chảy hoàn toàn (khoảng 30’ – 1h)
- Không thắp nến liên tục quá quá 3h. 
- Sau khi đốt không nên dùng miệng thổi tắt nến (dễ sinh ra khói đen) nên dùng chụp nến chuyên dụng chụp lên khoảng 10-15s để nến tắt hoặc dùng 1 chiếc đĩa sứ nhỏ chụp lên trên.
- Sau khoảng 1h-2h sử dụng, bạn tắt nến đi và yên tâm là nến vẫn tỏa mùi hương nhẹ nhàng sau khi tắt đấy.  (Đốt nến trong phòng kín và ít người ra vào để hương thơm được lưu giữ lâu hơn)
- Đốt nến trước khi vào phòng 15’ 

#nenthom #nenhoakho #nentrangtri #nenthom #nenthomtrangtri #decor #citta #trangtriphongngu #quatang #khoanhgodecor #chupanh #thaomoc #nenthomhinhtru #nenthomantoan #giare #vintage #retro #nature #homedecor #trang', 120000.0000, N'NCDS_7.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (75, N'Giá để bát đĩa 3 tầng tiện lợi', N'Vui lòng chọn kích thước phù hợp theo kích thước bồn rửa nhà bếp của bạn.  Nhớ đo chiều cao tủ phía trên bồn rửa để kệ không vừa tủ bếp❤
Giá đỡ bồn rửa được trang bị một lớp / hai lớp, vui lòng nhấp vào tùy chọn sản phẩm, kích thước của sản phẩm được đính kèm trong hình ảnh.❤
Nếu bạn không biết cách đo, vui lòng liên hệ với bộ phận chăm sóc khách hàng của chúng tôi để được tư e vâng,Cảm ơn bạn nhiều nhé!

Kệ Chén Bát Đa Năng  | chất lượng cao
Sức mạnh sản phẩm
- Được làm bằng thép không gỉ và sơn nướng không dễ rỉ sét
- Cốc hút đáy làm cho kệ không bị trượt và ổn định hơn
- Nước sẽ nhỏ giọt vào bồn rửa trong khi sấy khô, giữ cho mặt bàn của bạn khô ráo.
- Thiết kế khe cắm thẻ đơn giản có thể được điều chỉnh bất cứ lúc nào theo sở thích của bạn

THÔNG TIN SẢN PHẨM:
- Chất Liệu: Thép Carbon Chống Han Gỉ
- Màu Sắc: Màu đen
- Kiểu Dáng: Model mới nhất 2022
-Kích thước sản phẩm:(dữ liệu giống như hình ảnh)
[65cm 1、2 tầng]: 65*27*50、78cm
[85cm 1、2 tầng]: 85*27*50、78cm
[95cm 1、2 tầng]: 95*27*50、78cm
[105cm 1、2 tầng]: 105*27*50、78cm
[125cm1、 2 tầng]:125*27*50、78cm

Một bộ bao gồm:
- Nơi bảo quản trái cây, rau và cốc
- Đĩa + nơi bảo quản bát
- Giá đỡ dao +lồng đũa + giá đỡ thớt + giỏ để làm sạch vật tư + 8 móc có thể tháo rời

📣 
CHÚNG TÔI CHẤP NHẬN TRẢ LẠI NẾU MẶT HÀNG CHƯA ĐƯỢC ĐEO HOẶC SỬ DỤNG.
Vui lòng trò chuyện với chúng tôi nếu bạn có bất kỳ nghi ngờ nào. Chúng tôi rất hân hạnh được giúp đỡ bạn', 125000.0000, N'NCDS_8.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (76, N'Bộ Dao 5 Món JAPAN ASAKH ', N'Bộ dao 5 món JAPAN ASAKH
- Chế biến được nhiều món ăn khác nhau nhờ nhiều kích thước dao.
- Lưỡi làm bằng thép sắc bén giúp chế biến món ăn nhanh chóng.
- Lưỡi dao không bị gỉ sét có độ bền cao, đảm bảo sức khỏe người dùng.
- Cán dao và các bộ phận làm từ nhựa đảm bảo không bị trơn trượt khi sử dụng.
- Thiết kế sang trọng, tô điểm thêm nét đẹp cho không gian nhà bếp.
- Sản phẩm gồm: 3 dao kích thước khác nhau, 1 khuôn trứng hình trái tim , 1 mở bia
- Kích thước: 3 dao (29.7 x 6.5 cm, 31.4 x 4.2 cm, 22.8 x 23 cm)
#dao #bodao #bodao5mon', 80000.0000, N'NCDS_9.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (77, N'Hộp đựng muỗng Inox và đũa tre', N'Thương hiệu: khác; Chất liệu: Thép không gỉ; Xuất xứ: Trung Quốc đại lục; Các yếu tố phổ biến: Nhỏ và Tươi; (đũa gỗ), bộ 2 chiếc đũa thìa lớn màu xanh lá cây (đũa gỗ), bộ 2 chiếc thìa gấu trúc màu be (đũa gỗ), Bộ 2 đũa thìa heo hồng (đũa gỗ), gấu xanh- Bộ 2 thìa đũa (đũa gỗ), Bộ 2 đũa thìa hồng caro (đũa gỗ), đèn caro Đũa thìa xanh bộ 2 cái (đũa gỗ), Bộ 2 thìa đũa màu cà phê kẻ caro (Đũa gỗ), Bộ 2 đũa thìa xanh đậm kẻ caro (đũa gỗ), Đũa thìa bột thỏ 2- Bộ thìa (đũa gỗ), Bộ 2 thìa đũa bunny xanh (đũa gỗ), Bunny xanh- Bộ 2 thìa (đũa gỗ), Cơm thỏ nhỏ - Bộ 2 thìa (đũa gỗ) đũa gỗ), mèo hồng - bộ 2 thìa đũa (đũa gỗ), mèo xanh - bộ 2 thìa đũa (đũa gỗ), Bộ 2 thìa đũa củ cải xanh (đũa gỗ), Bộ đũa thìa củ cải 2 cái (đũa gỗ), Bộ 2 thìa thìa củ cải hồng (đũa gỗ), Bộ 2 thìa đũa củ cải xanh (đũa gỗ), Bộ đũa thìa bột Piggy 2 -Piece Set (Đũa Gỗ), Piggy Blue-Spoon Chopsticks Set 2 (Đũa Gỗ), Piggy Green-Spoon Chopsticks Set 2-Piece Set (Đũa Gỗ), Piggy Rice-Spoon Chopsticks Set (đũa gỗ); mã số: 22123; nguồn ảnh chính: ảnh thật tự chụp; cảnh áp dụng: tặng quà hàng ngày; đối tượng áp dụng: sinh viên;Xin chào! Chào mừng bạn đến với cửa hàng của chúng tôi. Hy vọng bạn có một mua sắm tốt!
Kính thưa:
1. Tất cả các mặt hàng trong cửa hàng đều có trong kho.Thời gian giao hàng thông thường là 10ngày.
2. Nhiều sản phẩm mới được cập nhật trong cửa hàng của tôi mỗi ngày.Để giúp bạn nhận được chiết khấu lớn nhất, hãy chú ý theo dõi.
3. chúng tôi sẽ tiến hành kiểm tra chất lượng nghiêm ngặt về chất lượng của hàng hóa bạn mua.Nếu bạn có bất kỳ vấn đề chất lượng, xin vui lòng sử dụng "trò chuyện" để liên hệ với chúng tôi, chúng tôi sẽ giải quyết tất cả các vấn đề hợp lý cho bạn càng sớm càng tốt. Cảm ơn bạn!', 115000.0000, N'NCDS_10.jpg', NULL, NULL, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (78, N'Xe ô tô mô hình kim loại Lambo tỷ lệ 1:36', N'Tỷ lệ: 1:36
Chất liệu: Nhôm
Kích thước: 12x6x3.5cm
Xe Lambo Sian không có hộp sản phẩm
Dùng để trưng bày hoặc cho bé chơi
Bạn có thể dùng để chơi bằng cách kéo xe ra sau rồi thả ra vì xe có cót.

#xe#đồ_chơi#kim_loại#lambo#siêu_xe#quà_tặng##sinh_nhật#', 165000.0000, N'DC_1.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (79, N'Xe đua điều khiển từ xa 4WD', N'Xin lưu ý rằng! Vì quy định vận chuyển trên shopee không thể vận chuyển pin nên sản phẩm này là phiên bản pin. Bạn cần cài đặt pin trước khi có thể chơi. Sản phẩm không bao gồm pin và cần được mua riêng
Loại: điều khiển từ xa không dây
Thương hiệu: Những người khác
Xuất xứ: Chenghai, Quảng Đông
Áp dụng đám đông: không giới hạn, gái, trai
Các tính năng: điều khiển từ xa 4 chiều
Nhập khẩu hay không: Trong nước
Đóng gói: hộp màu
Chất liệu đồ chơi: Nhựa
Trồng trọt khả năng: cảm xúc, thị giác, phát triển trí thông minh, tay và não, cầm nắm, các giác quan, phối hợp tay mắt, đồ chơi tương tác, thính giác, giao tiếp giữa cha mẹ và con cái, trau dồi sự quan tâm
Mô hình và thương hiệu: những người khác
Cho dù có hình ảnh động: không
Có Video hướng dẫn mua hàng không: có
Chế độ điều khiển từ xa: Xử lý
Dành riêng cho ngoại thương: không
Danh mục cấu hình 3C: đồ chơi điện dưới 14 tuổi
Màu: xanh đen, đen xanh, đỏ, vàng xanh, đỏ trắng, xanh tinh khiết, xám xanh, đen xanh 1, đỏ tươi, xám đỏ, cam sáng, vàng tươi, xanh sáng, bột Maca, xanh Maca, Maca Màu xanh lá
Quy mô: Phiên bản pin [không bao gồm pin]', 170000.0000, N'DC_2.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (80, N'Lắp ghép Mô hình Army Tàu chiến', N'Đồ chơi Lắp ghép Mô hình Military Army Warship Xếp hình Tàu Chiến Xingbao 06030
MÔ TẢ SẢN PHẨM
Số Hiệu: Xingbao 06030
Số Chi Tiết: 2631 chi tiết (mảnh ghép)
Chất liệu: Nhựa ABS cao cấp
Độ tuổi: 6+
- Màu sắc: đa dạng
- chi tiết sắc nét tinh tế với cấu trúc mới lạ, chắc chắn phải có trong bộ sưu tập của bạn.  
- mô hình mới mẻ sáng tạo
- Độ bền cao.
- Khối lượng: 3200g
- Thông tin cảnh báo: Sản phẩm có các mảnh nhựa nhỏ có thể gây nguy hiểm nếu nuốt phải.
- Năm sản xuất: 2021.
- Sản xuất tại: Trung Quốc.

THÔNG TIN SẢN PHẨM
- đây là loại đồ chơi trí tuệ lắp ráp cho bé thoả sức sáng tạo  
- Cách chơi: dựa theo các bước lắp ráp chi tiết từ sách hướng dẫn kèm theo, hoắc có thể tuỳ sức sáng tạo của mỗi người.

CÔNG DỤNG SẢN PHẨM
- - Tất cả các sản phẩm của shop đều hướng đến nhằm phát triển tư duy sáng tạo  và rèn luyện tính kiên trì, nhẫn nại của các bé đặc biệt là trẻ em nâng cao khả năng tư duy và phát triển trí não.
- sản phẩm là đồ chơi phù hợp với trẻ từ 6 tuổi có thể chơi mọi lúc mọi nơi bởi kích cỡ và kiểu dáng đa dạng, những chi tiết sắc nét cách chơi cũng vô cùng đơn giản. 
- sản phẩm là đồ chơi rèn luyện trí nhớ, sự thông minh, sáng tạo, khéo léo và tính kiên nhẫn.
- sản phẩm có những lợi ích tiềm tàng vượt trội hơn những loại đồ chơi trí tuệ khác để bố mẹ có thể sẵn sàng mua cho con mình để phát triển trí não một cách tối đa, và hạn chế tiếp xúc nhiều với điện thoại.

CAM KẾT
- Sản phẩm y như shop đã mô tả.
- Số lượng tồn kho được cập nhật chính xác 100%.
- -sản phẩm của shop gồm nhiều chi tiết nhỏ nên đã bóc mở các túi ra sử dụng thì bên shop không đồng ý hoàn trả hàng, nếu trong lúc tiến hàng lắp ráp mà xảy ra sự cố thiếu chi tiết nhỏ vui lòng kiểm tra và đối chiếu với các mảnh sách hướng dẫn và báo lại bên mình, để bên mình kiểm tra và hộ trợ bù mảnh cho quý khách.
- Nhà nhập khẩu: Công Ty TNHH MTV TM DV TV Hoàng Phúc
Địa chỉ: 88/13 lâm vặn bền,quận 7,tp hồ chí minh', 135000.0000, N'DC_3.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (91, N'Bộ đồ chơi mô hình thế giới các con động vật hoang dã  MySun', N'Mẹ muốn dạy cho con học làm quên và nhận biết các loài động vật sớm. Để bé mở rộng kiến thức và phát triển trí tuệ thông minh. Vậy thì bộ đồ chơi thế giới hoang dã bằng nhựa có đầy đủ các mô hình con động vật như cá sấu, hổ, gấu, sư tử, sói, hà mã, hươu cao cổ, linh cẩu … là giáo cụ rất hữu ích cho bé. Bộ đồ chơi giúp kích thích thị giác, xúc giác và phát triển trí não trẻ nhỏ từ 3 tuổi.

🌸 ƯU ĐIỂM NỔI BẬT CỦA SẢN PHẨM 🌸
❁ Bộ đồ chơi mô hình động vật được làm bằng chất liệu nhựa PVC nguyên sinh cao cấp  kích thước lớn an toàn cho bé từ 3 tuổi
❁ Hình dáng và màu sắc các con động vật hoang dã được mô phỏng giống thật. Giúp con phân biệt, ghi nhớ hình ảnh và từ vựng các loài tự nhiên.
❁ Đồ chơi thế giới động vật hoang dã có đến 40 mẫu mô hình con vật như hổ, sư tử, voi, cá sấu, tê giác, hươu, gấu, sói, hươu, nai, rắn, trăn, rùa…
❁ Sản phẩm được vẽ thủ công bằng đôi tay của các nghệ nhân. Do vậy mỗi sản phẩm là duy nhất, không giống nhau hoàn toàn giữa cùng một mã.
❁ Mỗi mã sản phẩm có thể có nhiều kiểu dáng khác nhau: con đực, cái, con non, tư thế… được phân bố ngẫu nhiên. ❁ Nếu khách hàng yêu cầu mẫu cụ thể, vui lòng liên hệ trước với MySun. Việc đa dạng kiểu dáng trong cùng một mã sản phẩm giúp cho khách hàng có thể tạo được một quần thể một loại.

🌸 THÔNG TIN CHI TIẾT SẢN PHẨM 🌸
❁ Vật liệu: nhựa PVC nguyên sinh.
❁ Đối tượng: cho bé trai, gái từ 3 tuổi.

Chọn mẫu, kích thước, khối lượng chi tiết:
Mô hình sư tử đực: 13cm x 5cm x 7cm / 81gr.
Mô hình sư tử cái: 12cm x 2.5cm x 5.5cm hoặc 11cm x 2.5cm x 5cm / 46gr.
Mô hình con voi: 16cm x 8.5cm x 9cm hoặc 16.5cm x 10cm x 9.5cm / 309 gr.
Mô hình con hổ: 11.5cm x 2.5cm x 6cm hoặc 13cm x 3.5cm x 6cm / 67gr.
Mô hình con trâu: 13cm x 6.5cm x 6.5cm hoặc 13cm x 5cm x 6.5cm / 137gr
Mô hình hươu cao cổ: 12cm x 3cm x 13cm hoặc 8cm x 3.5cm x 17cm / 70gr.
Mô hình tê giác: 13cm x 4cm x 5cm hoặc 14cm x 4cm x 6cm / 131gr.
Mô hình cá sấu: 18cm x 7cm x 5cm / 94gr
Mô hình hà mã: 10cm x 6cm x 6.5cm / 108gr.
Mô hình ngựa vằn: 10 x 5 x 8.5cm hoặc 10 x 5 x 8cm hoặc 11 x 3 x 6cm / 70gr
Mô hình con báo: 11cm x 2.8cm x 4.3cm hoặc 10.5cm x 3.5cm x 4.cm / 49gr
Mô hình chuột túi: 11 x 3.5 x 6cm hoặc 11 x 4 x 7.5cm hoặc 9 x 4 x 9cm / 43gr
Mô hình con gấu: 11cm x 5cm x 6cm / 120gr
Mô hình khỉ đột: 7cm x 3.5cm x 7cm hoặc 8cm x 5.5 cm x 8cm / 98gr.
Mô hình con ngựa: 14.5cm x 4cm x 10cm / 110gr
Mô hình lạc đà: 12cm x 3.5cm x 8.5cm / 95gr
Mô hình con sói: 9cm x 2cm x 6.5cm
Mô hình con trăn: 8.5cm x 7.5cm x 8cm / 66gr
Mô hình gấu trúc: 9.5cm x 4cm x 4.5cm / 95gr
Mô hình linh cẩu: 11cm x 3cm x 9cm / 91gr.
-------------------------------------------------
🌸 HOTLINE hỗ trợ sản phẩm 24/07: 0339238996
Đại diện pháp luật: Công ty TNHH MySun Việt Nam
Kho hàng: ngõ 111 Triều Khúc, Thanh Xuân, Hà Nội.

Tag: #dochoiconvat #mohinhdongvat #dochoidongvat #mohinhconvat #bodochoiconvatbangnhua #mohinhcasau #mohinhconho #mohinhcongau #dochoiconchim #mohinhsutu ', 180000.0000, N'DC_4.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (92, N'Mô hình giấy kiến trúc Thành phố mini London', N'LƯU Ý: SẢN PHẨM LÀ BỘ KIT IN TRÊN GIẤY BẠN MUA VỀ PHẢI TỰ CẮT RA VÀ DÁN LẠI THỦ CÔNG BẰNG KEO SỮA Ạ!
(Bạn cần phải có dụng cụ để làm như: keo sữa, dao trổ, kéo, thước, nhíp và bảng cắt - có thể chọn mua trong mục dụng cụ).
<CẢNH BÁO: KO PHÙ HỢP CHO TRẺ EM DƯỚI 10 TUỔI>
Bộ sản phẩm Mô hình giấy kiến trúc Thành phố mini London bao gồm:
- 4 tờ kit mô hình.
- 1 tờ hướng dẫn lắp ráp.
Xuất xứ: Việt Nam
SHOP CÓ KÈM THEO TỜ HƯỚNG DẪN (TỜ BILL) MỞ CÁC DẠNG HƯỚNG DẪN NHƯ: VIDEO, 3D PDO (TẢI FILE) TRÊN CÁC THIẾT BỊ HỖ TRỢ XEM NHƯ ĐIỆN THOẠI HAY MÁY TÍNH - NẾU BẠN KO HIỂU HÃY INBOX SHOP NHÉ.
----------
- In màu có 3 loại là: Mực nước (mực thường), mực dầu (không phai & kháng nước) và in laser màu (không phai & kháng nước)
 + Mực nước (mực thường) không kháng nước khi dính nước sẽ bị nhòe màu (giấy ford bị nhòe nhiều hơn giấy ảnh và giấy Kit Couche do giấy ford thấm nước nhiều hơn) để lâu sẽ bị phai màu.MSZ-006 Hyper Zeta Gundam
 + Mực dầu để lâu không phai màu và kháng nước, khi dính nước sẽ ko bị nhòe nhưng đổ nước vào thì vẫn sẽ bị hư do đặc tính của giấy là thấm và tan trong nước.
 + In Laser để lâu không phai màu và kháng nước tốt hơn mực dầu 1 bậc nhưng cào mạnh thì tróc màu do mực laser là dạng mực bột in rất sắc nét và đẹp nhưng giá thành cao và chỉ duy nhất loại này in được giấy nhũ Stardream còn 2 loại mực thường và dầu in sẽ bị lem màu.
- Giấy ford là loại giấy photo (giấy photo hay sử dụng là định lượng 70gsm) nhưng dày hơn (định lượng 125gsm, 180gsm, 250gsm - số càng lớn thì càng dày nhưng dày quá sẽ khó cắt ráp cho các mô hình có độ chi tiết cao). 
- Giấy thuốc (130gsm) là giấy chuyên in màu - nét căng in rõ và rực rỡ, đẹp và bền màu hơn giấy ford. 
- Giấy ảnh (135, 160, 230gsm) là giấy bóng in màu nét căng in rõ, đẹp và bền màu hơn giấy ford. 
- Giấy Kit Couche (160, 260, 300gsm) là giấy được phủ lớp thuốc bám mực lên bề mặt giấy, đặc biệt giấy Kit Couche là loại giấy bóng mờ in màu lên rất đẹp và cao cấp, bền màu hơn giấy ford.
- Giấy nhũ ánh kim Stardream 120gsm thường dùng để in gundam giúp mô hình có độ chân thật như kim loại và có định lượng 120gsm. Giấy nhũ Stardream là loại giấy nhập từ nước ngoài và chỉ in màu bằng máy laser chính hãng cho thành phẩm siêu đẹp khi hoàn thành nhưng giá thành cao so với các loại khác.
- Định lượng 160gsm - 180gsm là loại đa năng làm được tất cả các loại mô hình. 
- Giấy khổ A3 sẽ cho mô hình to hơn bình thường, chất lượng kit sẽ giảm hơn khổ A4 và chỉ có loại giấy ford định lượng 180gsm in mực thường.
- Độ dày: định lượng GSM, số càng lớn thì càng dày: 120<125<130<135<160<180<230<250<260<300gsm.
----------
Còn rất nhiều mẫu trên: kit168.vn
Facebook: www.facebook.com/kit168mhg
Cộng đồng: www.facebook.com/groups/kit168', 75000.0000, N'DC_5.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (93, N'Bộ Lắp Ráp Lego Mô Hình Xe Cảnh Sát ', N'Đội chiến thuật và vũ khí đặc nhiệm SWAT có tên tiếng Anh đầy đủ là Special Weapons And Tactics. Là đơn vị tác chiến đặc biệt tinh nhuệ, tuyển chọn những người lính ưu tú nhất phục vụ cho chính phủ Hoa Kỳ. Bộ đồ chơi xếp hình cảnh sát SWAT mô phỏng 4 mẫu mô hình khí tài là xe tăng bọc thép quân sự, xe chở lính đặc nhiệm Swat, tàu chiến hạm hải quân và máy bay trực thăng chiến đấu. 

🌸 5 ƯU ĐIỂM NỔI BẬT BỘ ĐỒ CHƠI LẮP GHÉP CẢNH SÁT ĐĂC NHIỆM SWAT 🌸
❁ Mảnh chi tiết đúc từ nhựa ABS cao cấp, cho độ chính xác tuyệt đối, an toàn cho bé.
❁ Các mô hình xe tăng, máy bay cảnh sát được mô phỏng như đời thật với nhiều chi tiết súng máy máy, khớp nâng, hạ, xoay 360 độ.
❁ Bộ đồ chơi ghép hình xe bọc thép, máy bay trực thăng, xe lính đặc nhiệm Swat, tàu chiến hạm có màu đen chủ đạo siêu ngầu mà mọi bé trai đều thích.
❁ Quá trình lắp ráp giúp cho bé phát triển toàn diện nhiều kỹ năng. Đặc biệt, bé được rèn tính kiên nhẫn không bỏ cuộc.
❁ Sản phẩm đóng niêm phong trong hộp màu đẹp, phù hợp làm quà tặng cho bé. MySun cam kết đầy đủ chi tiết, còn nguyên tem niêm phong, không thất thoát.

🌸 THÔNG SỐ ĐỒ CHƠI XẾP HÌNH  XE CẢNH SÁT SWAT, TÀU CHIẾN HẠM HẢI QUÂN 🌸
❁ Vật liệu: nhựa ABS nguyên sinh cao cấp. 
❁ Đối tương: trẻ em từ 6 tuổi, lắp cùng ba mẹ.
❁ Quy cách: đóng hộp carton màu đẹp.
❁ Kích thước hộp: 38cm x 28cm x 5.5cm
❁ Kích thước mô hình và số mảnh:
- Bộ đồ chơi xe chở lính đặc nhiệm Swat: 33cm x 8.3cm x 18.5cm | 436 chi tiết
- Bộ đồ chơi xe tăng bọc thép Swat: 17.3cm x 8.1cm x 9.4cm | 415 chi tiết
- Bộ đồ chơi tàu chiến hải quân Swat: 20.3cm x 12.7cm x 10.4cm | 415 chi tiết 
- Bộ đồ chơi máy bay trực thăng Swat: 28.6cm x 13.5cm x 12cm | 423 chi tiết

------------------------------------------------------------------------------
🥇 HOTLINE hỗ trợ sản phẩm 24/07: 0946 931 385 
Đại diện pháp luật: Công ty TNHH MySun Việt Nam.
Kho hàng: Số 59 B2 kđt Đại Kim, Hoàng Mai, Hà Nội.

Tag: #legoxe canhsat #xecanhsatlego #legootocanh sat #legootocanhsat #legoswatcar #legocanhsatswat #bodochoicanhsat #dochoilegocanhsat #swatlego #legoswat #legoswattruck', 120000.0000, N'DC_6.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (94, N'Mô hình xe Tesla Model S, Model X 1:32 Proswon', N'Tỉ lệ: 1:32
Chất liệu: Khung xe đúc bằng kim loại, lốp xe bằng cao su, chi tiết xe được mô phỏng thiết kế như xe thật, một số chi tiết được mạ chrome.
Sơn: Lớp sơn mịn, dầy bền và bóng hoàn hảo.
Chức năng: Xe mở được 4 cửa, capo trước, cốp sau.
Kích thước: dài 14cm, ngang 6cm, cao 3cm
Trọng Lượng: (đang cập nhật)
Hãng sản xuất: Proswon
Mô hình xe Tesla Model S 1:32 Proswon
Giới thiệu: Chiếc xe có thiết kế như thật với những đường nét mô phỏng chi tiết, được sơn tĩnh điện tinh tế rất phù hợp để trưng bày ở phòng khách, phòng làm việc, showroom..Mô hình xe với kích cỡ nhỏ nhắn sẽ trở thành một món sưu tập thú vị trong phòng của bạn.
#xemohinh #xemohinhoto #mohinhxehoi #sportcars #luxurycars #Proswon #mohinhxesang #xemohinhtinh #xemohinhdep #xetrungbay #mohinhtinh', 190000.0000, N'DC_7.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (95, N'Mô hình máy bay Qatar Airways Airbus A380 ', N'- Được mô phỏng chi tiết và sắc nét. Giống với mẫu máy bay thật lớn nhất của hãng. Kích thước nhỏ nhắn rất thích hợp trong nhiều khía cạnh. 
- Được làm từ kim loại nguyên khối và công nghệ sơn tĩnh điện tạo cho chiếc máy bay mô hình có khối lượng nặng vừa tay (không quá nhẹ), nước sơn sáng bóng và bền. Đặc biệt, nhờ đó các chi tiết như cửa sổ, chữ, hoa văn trên máy bay đẹp hơn và không bị lem.
- Mô hình nhỏ, vừa vặn rất thích hợp để trưng bày trên bàn làm việc hay bàn học. Dễ dàng sở hữu ngay bộ sưu tầm những hãng máy bay mình đã từng đi hay chỉ đơn giản là vì mình thích chúng.
- Ngoài ra, sẽ là một món quà lưu niệm cực kỳ ý nghĩa để bạn dành tặng cho bạn bè hay người thân của mình.
- Đi kèm máy bay là một chân đế, luôn được đặt ở tư thế hướng lên. Giống như mô chiếc máy đang cất cánh lên tận trời cao và đi tới những vùng xa xôi mới lạ. Cảm giác đó bạn hãy tưởng tượng nó như thế nào nhé.
--------------------------------------------------------------------------
MỘT CHÚT VỀ MÔ HÌNH MÁY BAY
- Kích thước: 16cm x 16cm x 10cm
- Chất liệu: bặng kim loại kết hợp sơn tĩnh điện
- Bộ sản phẩm: Bao gồm Hộp, máy bay, và đế tháo lắp gọn gàn
- Thích hợp trong nhiều khía cạnh
- Hãng sản xuất Everfly', 100000.0000, N'DC_8.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (96, N'Mô hình lắp ráp LBX Perseus 2nd', N'Tên sản phẩm: Mô hình  LBX Perseus 2nd Chính hãng Bandai New nguyên seal box đẹp
Tình trạng sản phẩm: Hàng mới 100% 😍
Xuất xử sản phẩm: chính hãng 100%, shop cam kết không bán hàng giả, hàng nhái. 😎

👉 Nếu bạn phát hiện bất kỳ một sản phẩm nào của shop là hàng không chính hãng, hàng dựng, hàng nhái. 
👉 Shop cam kết sẽ bồi thường gấp đôi tổng giá trị đơn hàng của bạn 

👌 Cam kết vận chuyển toàn quốc CỰC KỲ chuyên nghiệp, đóng thùng carton siêu dày, bọc lót đầy đủ.
💪 Đảm bảo vận chuyển mọi tình thành trên toàn quốc mà hộp sản phẩm không bị móp méo. ', 95000.0000, N'DC_9.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (97, N'Mô hình lắp ráp LBX Elysion 2nd', N'Tên sản phẩm: Mô hình  LBX Elysion2nd Chính hãng Bandai New nguyên seal box đẹp
Tình trạng sản phẩm: Hàng mới 100% 😍
Xuất xử sản phẩm: chính hãng 100%, shop cam kết không bán hàng giả, hàng nhái. 😎

👉 Nếu bạn phát hiện bất kỳ một sản phẩm nào của shop là hàng không chính hãng, hàng dựng, hàng nhái. 
👉 Shop cam kết sẽ bồi thường gấp đôi tổng giá trị đơn hàng của bạn 

👌 Cam kết vận chuyển toàn quốc CỰC KỲ chuyên nghiệp, đóng thùng carton siêu dày, bọc lót đầy đủ.
💪 Đảm bảo vận chuyển mọi tình thành trên toàn quốc mà hộp sản phẩm không bị móp méo. ', 95000.0000, N'DC_10.jpg', NULL, NULL, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (99, N'Sách - Hành Tinh Của Một Kẻ Nghĩ Nhiềuuuu', N'Sách - Hành Tinh Của Một Kẻ Nghĩ Nhiều 
Tác giả: Nguyễn Đoàn Minh Thư
Số trang:	 184 trang
Kích thước:	13cm x 17cm
Nhà xuất bản:	Thế giới
Ngày phát hành:   13/06/2022
Giới thiệu sách: 
“Đó là mùa hè năm 2020, mùa hè của COVID-19 và một ngàn vạn khủng hoảng tuổi đôi mươi. Đó là mùa hè mình bắt chuyến bay sớm nhất có thể vào ngày 20 tháng 3 để chạy khỏi nước Anh đang bùng dịch, bị kẹt lại sân bay Bangkok trong 24 giờ đồng hồ vì chuyến bay quá cảnh về Sài Gòn bị huỷ.. 
Đó là mỗi đêm mùa hè nằm trên giường stress chuyện deadline luận văn, stress chuyện thất nghiệp không kiếm ra tiền, stress chuyện bỏ lỡ cơ hội thực tập giúp ích cho sự nghiệp của mình, stress chuyện học hành dở dang - không biết bao giờ mới có thể quay lại Anh và hoàn thành tấm bằng đại học, stress chuyện tồn tại một cách mơ hồ, không biết mình là ai.”
Hành tinh của một kẻ nghĩ nhiều là hành trình khám phá thế giới nội tâm của một người trẻ. Đó là một hành tinh đầy hỗn loạn của những suy nghĩ trăn trở, những dằn vặt, những cuộc chiến nội tâm, những cảm xúc vừa phức tạp cũng vừa rất đỗi con người. Một thế giới quen thuộc với tất cả chúng ta. 
Chứa đựng những lời chia sẻ và kiến thức từ podcast của Amateur Psychology - Tay mơ học đời bằng Tâm lý học, tác giả sẽ dẫn lối và đưa bạn tới từng ngóc ngách thầm kín nhất của hành tinh ấy dưới một góc nhìn chuyên sâu hơn.  
Và nếu bạn cũng là một kẻ nghĩ nhiều, chào mừng bạn đến với hành tinh này. 
“Sự cô đơn không nằm ở việc không có bạn bè hay người thân mà ngay cả trong sự sum vầy ta vẫn cảm thấy không có ai có thể hiểu mình tường tận từ sâu tâm hồn. Là sự cô đơn như thể chỉ có một mình mình trên một hành tinh đơn độc trong đầu, một hành tinh không bao giờ có khách viếng thăm”.
#sachnhanam #nhanambook #sachtamly #nguyendoanminhthu #hanhtinhcuamotkenghinhieu e', 85000.0000, N'S_2.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (100, N'Sách - Rich Dad Poor Dad (Cha Giàu Cha Nghèo)', N'Rich Dad Poor Dad: What The Rich Teach Their Kids About Money That The Poor And Middle Class Do Not! April of 2022 marks a 25-year milestone for the personal finance classic Rich Dad Poor Dad that still ranks as the #1 Personal Finance book of all time. And although 25 years have passed since Rich Dad Poor Dad was first published, readers will find that very little in the book itself has changed — and for good reason. While so much in our world is changing a high speed, the lessons about money and the principles of Rich Dad Poor Dad haven’t changed. Today, as money continues to play a key role in our daily lives, the messages in Robert Kiyosaki’s international bestseller are more timely and more important than ever. Milestones While there is a milestone to commemorate — and a new section in the book on Why Milestones Are Important — preserving the integrity of the original content is testimony to the fact that this book has truly stood the test of time. The sidebars throughout the...', 243000.0000, N'S_3.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (101, N'Sách Lật Tương Tác Song Ngữ 0-3 Tuổi', N'SÁCH LẬT TƯƠNG TÁC SONG NGỮ 0-3 TUỔI: Ú ÒA

Nhà Cung Cấp: Nhã Nam

Tác giả: Giuliano Ferri

Nhà xuất bản: Thế Giới

Số trang: 16

Kích thước: 17 x 17 cm

Ngày phát hành: 04-07-2018

Bé mới tầm 1 tuổi đã cần đọc sách chưa?

Bố mẹ muốn cho bé tiếp xúc sớm với sách được chứ?

Bé còn nhỏ quá, sợ cầm sách thì xé mất!

Bé mới ít tuổi thế đã nhận thức được gì chưa mà đọc sách?

Đúng là trẻ nhỏ chưa cần “đọc” sách, mà các con cần được “chơi” với sách như là một món đồ chơi giàu tính tương tác. Sách cho lứa tuổi dưới 3 thường phải đảm bảo các tiêu chí: giấy dày để trẻ khó xé hay cắn hỏng, hình ảnh rất to rõ và thường ít màu để phù hợp với khả năng tiếp thu của trẻ, có hiệu ứng tương tác như lật giở-sờ chạm… để trẻ được vận động tay chân với sách, in bằng màu tốt và phủ bóng để đảm bảo an toàn nếu trẻ lỡ cắn hay liếm sách, nội dung thật gần gũi với nhu cầu và tâm lý lứa tuổi để bố mẹ dễ nói chuyện thủ thỉ với trẻ nhằm tăng cường giao tiếp thân mật…

Ú òa

Chó, mèo, lợn, cú đi đâu cả?

Các bạn nấp ở đâu rồi hả?

Bé hãy thử mở miếng lật ra!

Ú òa, ú òa, úi chà chà!

SÁCH LẬT TƯƠNG TÁC SONG NGỮ 0-3 TUỔI: MẸ ĐÂU RỒI?

 Tác giả: Giuliano Ferri

 Dịch giả: Nguyễn Xuân Nhật

 Nhà xuất bản: Thế Giới

Số trang: 20

Kích thước: 17 x 17 cm

Ngày phát hành: 31-07-2018

Đúng là trẻ nhỏ chưa cần “đọc” sách, mà các con cần được “chơi” với sách như là một món đồ chơi giàu tính tương tác. Sách cho lứa tuổi dưới 3 thường phải đảm bảo các tiêu chí: giấy dày để trẻ khó xé hay cắn hỏng, hình ảnh rất to rõ và thường ít màu để phù hợp với khả năng tiếp thu của trẻ, có hiệu ứng tương tác như lật giở-sờ chạm… để trẻ được vận động tay chân với sách, in bằng màu tốt và phủ bóng để đảm bảo an toàn nếu trẻ lỡ cắn hay liếm sách, nội dung thật gần gũi với nhu cầu và tâm lý lứa tuổi để bố mẹ dễ nói chuyện thủ thỉ với trẻ nhằm tăng cường giao tiếp thân mật…

SÁCH LẬT TƯƠNG TÁC SONG NGỮ 0-3 TUỔI: 5 QUẢ TÁO NHỎ

Tác giả: Yusuke Yonezu

 Dịch giả: Nguyễn Xuân Nhật

 Nhà xuất bản: Thế Giới

Số trang: 11

Kích thước: 17 x 17 cm

Ngày phát hành: 03-07-2018

5 quả táo nhỏ

Năm quả táo chín đỏ trên cành,

Thoắt cái bị chén sạch sành sanh.

Quả cuối cùng, biến hình thật nhanh,

Ôi thật diệu kỳ, táo có cánh!

Những quả táo dần dần trở thành thức ăn của từng con vật, quả cuối cùng là bữa ăn của một chú sâu bướm. Nhưng kìa, chú sâu bướm ăn xong liền biến thành gì thế này? Thật là đáng yêu và thú vị khi được nhìn thấy quá trình thoát xác của chú sâu bướm!

SÁCH LẬT TƯƠNG TÁC SONG NGỮ 0-3 TUỔI: MÔNG AI ĐÂY?

 Tác giả: Yusuke Yonezu

 Dịch giả: Nguyễn Xuân Nhật

 Nhà xuất bản: Thế Giới

Số trang: 16

Kích thước: 17 x 17 cm

Ngày phát hành: 12-07-2018

Mông ai đây?

Bé có biết những con vật này?

Hãy nhìn mông là đoán ra ngay,

Mông to, mông nhỏ, đuôi ngoáy ngoáy,

Con nào mông nấy, ôi thật hay!

Cuốn sách lật giở nhỏ xinh này mang đến niềm vui thật ngộ. Mông bạn nào đây nhỉ? Bạn xinh thế còn mông có xinh không? Bé sẽ học được về vẻ ngoài của rất nhiều con vật trong tiếng cười thú vị.', 380000.0000, N'S_4.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (102, N'Sách - Sapiens : A Brief History of Humankind', N'Thông tin sách:

ISBN	9780099590088
Tác giả	Yuval Noah Harari
NXB	 Vintage Publishing
Năm XB	01/05/2015
Trọng lượng (gr)	550
Kích thước (cm)	3.0 x 20.0 x 12.0
Số trang	512
Hình thức	Bìa Mềm
Ngôn ngữ	 Tiếng Anh 
Giới thiệu sách:
This is The Sunday Times Bestseller. Planet Earth is 4.5 billion years old. In just a fraction of that time, one species among countless others has conquered it. Us. We are the most advanced and most destructive animals ever to have lived. What makes us brilliant? What makes us deadly? What makes us Sapiens? In this bold and provocative book, Yuval Noah Harari explores who we are, how we got here and where we''re going. Sapiens is a thrilling account of humankind''s extraordinary history - from the Stone Age to the Silicon Age - and our journey from insignificant apes to rulers of the world. "It tackles the biggest questions of history and of the modern world, and it is written in unforgettably vivid language. You will love it!" (Jared Diamond, author of Guns, Germs and Steel).
#harari, #sapiens', 210000.0000, N'S_5.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (103, N'Sách - The Snowball System (Bán Hàng Đỉnh Cao) ', N'Công ty phát hành    : Công ty TNHH Happy Live
Tác giả	                 : Mo Bunnell
Ngày xuất bản	         : 25/02/2020
Kích thước	         : 16 x 24 x 2.5 cm
Nhà xuất bản	         : Nhà Xuất Bản Thế Giới
Dịch Giả	                 : Thái Phạm - Đỗ Ngọc Quỳnh Thư
Loại bìa	                 : Bìa rời
Số trang	                 : 400 trang

GIỚI THIỆU SÁCH

Làm sao để trở thành người bán hàng giỏi?

Ở Việt Nam, khi nhắc đến những cụm từ như “bán hàng” – “sales”, “tư vấn” (bảo hiểm, giáo dục), “môi giới” (chứng khoán, bất động sản), “phát triển kinh doanh” đa phần mọi người đều không thoải mái hoặc không mấy thiện cảm vì họ vốn không thực sự hiểu bản chất của các công việc này.

Dù có muốn tin hay không, bạn đang làm công việc bán hàng. Ngày nay, có nhiều chuyên gia bán hàng hơn bạn nghĩ – luật sư, chuyên gia tư vấn, chuyên gia tiếp thị, chuyên viên kế toán, thợ chụp hình, designer, bác sĩ… Nếu bạn giỏi về một chuyên môn bất kỳ và khách hàng phải trả tiền để bạn giúp họ thực hiện chuyên môn đó, thì thực ra, bạn là một người bán hàng.

Thực trạng chung của những người làm nghề bán hàng hiện nay đó là đa số họ đều thấy việc bán hàng vô cùng khó khăn và đòi hỏi những tố chất thiên bẩm. Vì thế nếu có mong muốn trở nên giỏi hơn trong những nghề này họ cũng không biết cách thức để phát triển hiệu quả.

Những cuốn sách, những khóa đào tạo kỹ năng bán hàng truyền thống luôn đề cao tầm quan trọng của việc “chốt hợp đồng. Chỉ cần bán được hàng là xong. Bán hàng kiểu cũ ưu tiên hiệu suất ngắn hạn hơn là các mối quan hệ lâu dài.

Ngày nay, quan niệm trên không còn phù hợp nữa. Tính đề phòng của người tiêu dùng cao hơn, và sự xuất hiện của những Website đánh giá sản phẩm, mạng xã hội cũng đồng nghĩa rằng: Mối quan hệ của bạn với tất cả khách hàng, không bao giờ thực sự kết thúc. Khách hàng được tự do chia sẻ về kinh nghiệm làm việc với bạn bất kỳ lúc nào họ muốn. Ngày nay, tin tức lan rất nhanh, và tin xấu thì còn lan nhanh hơn.

Việc bán hàng kiểu cổ điển khiến sự gắn kết giữa hai bên rất yếu ớt và dễ bị phá vỡ, nhưng nếu bạn giúp đỡ khách hàng một cách có chiến lược, bằng cách sử dụng Hệ thống bán hàng đỉnh cao, bạn sẽ thu được vô vàn lợi ích kể cả khi công việc giữa hai bên đã chấm dứt.

Hệ thống bán hàng đỉnh cao – Snowball là gì?

 _ Hệ thống bán hàng đỉnh cao gồm nhiều chiến lược, công cụ và chiến thuật hoạt động cùng nhau như một hệ thống tích hợp và tự củng cố. Phương pháp được trình bày theo từng bước cụ thể để thực hành và trở nên giỏi hơn. Dù bạn có năng lực ra sao, tố chất thế nào bạn cũng có thể trở thành một người bán hàng tuyệt vời thông qua việc “thực hành có chủ ý” theo hệ thống này.

_ Bản chất của Hệ thống bán hàng đỉnh cao là làm cho khách hàng cảm thấy họ đặc biệt. Bằng cách lắng nghe những mong muốn của họ và đáp ứng những mong muốn đó. Khi đã khiến khách hàng cảm thấy bạn coi trọng họ rồi, phần còn lại của quá trình bán hàng sẽ trở nên dễ dàng hơn.

_ Cuối cùng khách hàng của bạn sẽ hài lòng đến nỗi họ không thể dừng nói về bạn với mọi người. Họ trở thành người quảng cáo cho bạn – một cách marketing hiệu quả hơn bao giờ hết.

Tác giả Mo Bunnell là ai?

_Là người sáng lập và CEO của Bunnell Idea Group, một công ty huấn luyện, đào tạo và tư vấn chuyên về mảng bán hàng và Phát triển kinh doanh. Với vai trò là chuyên gia tư vấn và diễn giả chính của công ty, ông đã có cơ hội làm việc với những nhà lãnh đạo/nhóm lãnh đạo cấp cao đến từ nhiều công ty trong top Fortune 500 thuộc nhiều ngành nghề: công ty luật, công ty dịch vụ chuyên nghiệp, các tổ chức phi lợi nhuận…

Ai nên đọc cuốn sách Hệ thống bán hàng đỉnh cao

– Những người đang trực tiếp làm các công việc bán hàng như: nhân viên bán hàng B2C, B2B (Business to Business), B2G (Business to Government), chuyên viên phát triển kinh doanh, tư vấn giáo dục, tư vấn bảo hiểm, tư vấn bán xe hơi, môi giới bất động sản, môi giới chứng khoán…

– Những người giỏi về một chuyên môn bất kỳ và muốn khách hàng trả tiền nhiều hơn để bạn giúp họ thực hiện chuyên môn đó: giáo viên, luật sư, chuyên viên kế toán, thợ chụp hình đám cưới, chuyên viên thiết kế đồ họa, marketing…

– Những nhà quản lý, chủ doanh nghiệp muốn cải thiện kết quả kinh doanh của công ty.

Chuyên gia nói gì về sách về Hệ thống bán hàng đỉnh cao
“Hệ thống bán hàng đỉnh cao” là một trong những quyển sách về bán hàng hay nhất tôi từng đọc. Nếu bạn áp dụng những công cụ được trình bày trong quyển sách này, kết quả kinh doanh của bạn sẽ được cải thiện đáng kể. Những chuyên gia thành công luôn làm việc một cách có hệ thống và “Hệ thống bán hàng đỉnh cao” sẽ giúp độc giả thành công. Hệ thống của Mo đã rất hữu ích cho tôi và nhiều luật sư ở công ty của chúng tôi.” – Mike Duffy, Giám đốc Dịch vụ Khách hàng, King and Spalding.', 655000.0000, N'S_6.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (104, N'Sách - Harry Potter bộ 8 quyển bản Tiếng Anh', N'Với bộ sách này bạn sẽ học được vô vàn thứ:
👉 Kho từ vựng QUÁ KHỔNG LỒ
👉 Tác phẩm đậm chất văn học và hấp dẫn cho trẻ 
Tên sách: Harry Potter - Trọn Bộ 8 Cuốn
Tác giả: J.K Rowling
Ngày xuất bản: 2015-04-22
Nhà xuất bản: Scholastic
ISBN: 9781408856772

Số trang 08 cuốn:
1. Harry Potter and the Philosopher''s Stone – 309 trang
2. Harry Potter and the Chamber of Secrets - 341 trang
3. Harry Potter and the Prisoner of Azkaban- 345 trang
4. Harry Potter and the Goblet of Fire - 734 trang
5. Harry Potter and the Order of the Phoenix - 870 trang
6. Harry Potter and the Half-Blood Prince - 652 trang
7. Harry Potter and the Deathly Hallows – 732 trang
8. Harry Potter and the Cursed Child - 336 trang', 1150000.0000, N'S_7.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (105, N'Sách Tiếng Chim Nào Thủ Thỉ Dưới Mái Hiên (PNC)', N'Tiếng Chim Nào Thủ Thỉ Dưới Mái Hiên

Nhà xuất bản  : NXB Phụ Nữ.
Công ty phát hành : Phương Nam Book.
Kích thước    : 14.5 x 20.5 cm.
Tác giả       : Đinh Hoàng Anh.
Số trang      : 176.
Ngày xuất bản : 09-2018.
Loại bìa      : Bìa mềm.

Tiếng Chim Nào Thủ Thỉ Dưới Mái HiênTrên những cánh đồng, trên những rặng cây, trên những con mương nhỏ, trên những triền đồi khô xác hay những con suối cạn... Dù là cằn cỗi hay tươi xanh, dù là nắng gắt hay mưa bão, dù là ở nhịp điệu sinh thành hay tận diệt, hạnh phúc hay đau khổ... vẫn có những tiếng thủ thỉ dịu dàng của dòng chảy bất diệt, của những lời ru từ Tạo hóa.Giống như cây cỏ cứ nảy mầm vào mỗi độ xuân về, giống như những chiếc lá thu gửi chút nắng mùa hè vào đất mẹ, giống như mùi hương thầm lặng mỗi nhành hoa dại gửi đến đất trời trước khi tàn héo, những lời yêu thương ấy của cuộc đời không bao giờ ngừng vang lên trong mỗi khoảnh khắc, từ nơi sâu thẳm đáy lòng ta.Không biết từ bao giờ, có lẽ là từ thuở còn rất nhỏ, tôi đã có ước mong tha thiết lắng nghe và ghi lại những lời ru ấy, những điệu nhạc thắm thiết dịu dàng, dành cho riêng tôi và cũng dành cho tất thảy thế gian, những vẻ đẹp mong manh và trường cửu, đơn sơ và diễm lệ, trong từng hạt bụi, từng chút mưa rơi nắng tàn, từng thoáng hoa nở trăng lặn... Và tôi đã ghi như thế suốt bao năm của cuộc đời mình, khi thì là những bài thơ, khi thì là những đoạn văn, khi thì là những câu chuyện nhỏ. Để rồi vào một ngày nào đó chia sẻ cho các bạn.Lần này, tôi lại lượm lặt được, trong cuộc sống đơn sơ thường ngày, với sự lắng nghe trong yên lặng, những lời ru giản dị nhất, lời ru cho chính mình. Vào những khoảnh khắc thanh vắng, tĩnh tại, khi ta thực sự chỉ còn một mình với mình, với thế giới bên trong tâm hồn ta, thì những lời ru ấy mới vang lên. Giống như là một đêm xuân xanh rượi trong ngôi làng nhỏ, ta bỗng tỉnh giấc khi trăng đã gần tàn và hương lúa non lan nhẹ vào đêm một niềm yêu quặn thắt đến rơi lệ, ta chợt nghe tiếng chim nào thủ thỉ dưới mái hiên, khe khẽ như là hạnh phúc.Bạn hãy dừng lại một lát trên những trang sách mộc mạc này, cùng tôi lắng nghe những lời ru ấy.', 70000.0000, N'S_8.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (106, N'Sách: Đảo Giấu Vàng (Robert Louis Stevenson) ', N'ĐẢO GIẤU VÀNG
Mã sản phẩm: 8936067595512
Tác giả : Robert Louis Stevenson
Dịch giả :Vũ Ngọc Phan
NXB: NXB Văn Học
Kích thước : 12.5x20.5 cm
Năm xuất bản : 2022
Số trang : 276
Khối lượng : 250 grams
Bìa : Bìa mềm tay gập
đơn vị phát hành : Minh Long

Robert Louis Stevenson (1850-1894) là nhà văn người Scotland. Ông học ngành khoa học, đỗ kỹ sư, được huy chương bạc về một sáng kiến kỹ thuật. Nhưng đó chỉ là vốn kiến thức chung để giúp ông đi vào ngành mà trái tim ông đã chọn: viết văn. Stevenson được nhiều người mến phục vì tinh thần phấn đấu chống lại bệnh tật với sự vui vẻ và lòng can đảm. Ông cho ra đời nhiều tác phẩm NXB Văn Học nổi tiếng, trong đó có tiểu thuyết Đảo giấu vàng.

Một hòn đảo chơi vơi giữa biển, đêm ngày ầm ầm sóng vỗ, bỗng có một sức lôi cuốn kỳ diệu chỉ vì nó giấu trong lòng một kho vàng do băng cướp của viên thuyền trưởng Flint cất giấu. Ai sẽ đoạt được kho vàng, bọn cướp còn lại trong các băng của Flint hay là những người khác? Việc trước hết, có ý nghĩa quyết định là tìm ra được nơi Flint chôn giấu kho vàng, và tấm bản đồ chỉ nơi cất giấu lại tình cờ rơi vào tay chú thiếu niên nghèo, dũng cảm, thông minh hào hiệp, tên là Jim Haokinx. Câu chuyện phiêu lưu đến Đảo giấu vàng cũng bắt đầu từ đây...

#daogiauvang #sachhaynhat #sachvanhoc #minhlongbooks', 65000.0000, N'S_9.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (107, N'Sách Những Chiếc Cầu Ở Quận Madison ', N'Những Chiếc Cầu Ở Quận Madison (Tái bản năm 2020)

Nhà xuất bản  : NXB Hội Nhà Văn.
Công ty phát hành : Phương Nam Book.
Tác giả       : Robert James Waller.
Kích thước    : 13 x 20.5 cm.
Số trang      : 166.
Ngày xuất bản : 06-2018.
Loại bìa      : Bìa mềm.

Những Chiếc Cầu Ở Quận MadisonMột câu chuyện tình lãng mạn, day dứt và ám ảnh của nhà văn Mỹ nổi tiếng Robert James Waller. Câu chuyện bắt đầu bởi cuộc gặp gỡ định mệnh giữa nhiếp ảnh gia Robert Kincaid và Francesca – người phụ nữ nông thôn đã có gia đình. Những con người không thể tìm thấy nhau ở năm tháng tươi trẻ đã chạm nhau ở ngưỡng gần như chấp nhận sự sắp đặt của số phận. Tình yêu chỉ diễn ra trong 4 ngày, nhưng nó đủ cho cả cuộc đời. Nỗi đau êm đềm mà day dứt, âm thầm mà dai dẳng. Và dù chỉ có chiếc cầu ở quận Madison là nhân chứng duy nhất, tình yêu ấy vẫn bất diệt.Tác phẩm đã được chuyển thể thành phim năm 1995 – 3 năm sau khi cuốn tiểu thuyết được xuất bản và trở thành hiện tượng tại Mỹ.', 95000.0000, N'S_10.jpg', NULL, NULL, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (108, N'Kem chống muỗi đốt Soffell chai 60ml', N'Thành phần

13% w/v Diethyltoluamide

Công dụng

Xua muỗi đốt trong 8 giờ

Cách sử dụng:

Thoa đều lên những vùng da hở như cổ, tay, chân hoặc quần áo, chăn màn. Soffell xua muỗi trong vòng 10 giờ.

Bảo quản: 

Nơi khô ráo thoáng mát, tránh ánh nắng trực trực tiếp.

Hạn sử dụng: 3 năm kể từ ngày sản xuất

Dung tích: 60ml

Xuất xứ thương hiệu: Indonesia

Sản xuất tại: Indonesia', 25000.0000, N'SK_1.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (109, N'Siêu thiết bị xua đuổi côn trùng bằng sóng siêu âm ', N'✍Chúng tôi tập trung vào thiết kế, sản xuất và dịch vụ chất lượng cao để tạo ra chất lượng cuộc sống tốt đẹp ♥
 ✲Loại muỗi và côn trùng: Máy đuổi muỗi điện tử
 ✲Hỗ trợ sạc hay không: Không được hỗ trợ
 ✲Hình dạng: hình bầu dục
 ✲Điện áp: 90-220 (V)
 ✲Tần số tối đa: 50/60 (HZ)
 ✲Công suất: 1,98 (W)
 ✲Màu sắc: trắng, đen, hồng, xanh lá
✲Ổ đĩa vật lý, không có bức xạ
✲Sóng âm vật lý không có tạp âm.
✲Xua đuổi côn trùng theo các hướng 360 °', 155000.0000, N'SK_2.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (110, N'Cân điện tử nhỏ gọn và tiện lợi ', N'*THÔNG SỐ KỸ THUẬT: 
NĐ: Dùng PIN ( có thể sạc lại )
-- Máy bên shop có in logo trên sản phẩm và trên bao bì
-Shop tặng kèm thêm cáp sạc và dây đo bụng  khi mua cân bên shop
-Tải áp kết nối dễ dàng ( chỉ cần bạn quét mã QR trên tờ hướng dẫn sử dụng )
Kích thước: 26*26*cm 
Màu sắc: Màu trắng, Màu đen, Màu hồng
Màn hình LED LCD hiển thị chỉ số cân nặng 
MAX: 	 180kg
------------------------------------------------------
*ƯU ĐIỂM NỔI BẬT: 
Cân điện tử thông minh có khả năng kết nối với điện thoại thông minh, máy tính bảng với ứng dụng qua bluetooth
Cân điện tử yoroshiko có Độ chính xác cao, thích hợp dùng cho cả người lớn và trẻ em 
Mặt kính chịu lực, chịu nhiệt trong suốt
Sử dụng công nghệ cảm biến thông minh trong dòng cân hiện đại hiện nay 
Kiểu dáng hiện đại, thời trang, sang trọng, màu sắc tưoi sáng bắt mắt
CÁC CHỈ SỐ PHÂN TÍCH : 
- Cân nặng lý tưởng
 - Đo trọng lượng cơ thể
- Tỉ lệ cơ thể BMI
 - Đo tỉ lệ mỡ nội tạng
- Đo tỷ lệ nước trong cơ thể 
- Đo tỷ lệ cơ bắp 
- Đo khối lượng xương
- Tỉ lệ trao đổi chất, protein, béo phì,....
LƯU Ý: TUY NHIÊN với 1 số độ tuổi nhất định các chỉ số này sẽ không hỗ trợ hiển thị, ví dụ bé 2 tuổi mặc định chỉ hiển thị cân nặng và chỉ số BMI.
------------------------------------------------------
*HƯỚNG DẪN SỬ DỤNG: 
 Bước 1: Tải ứng dụng OKOK INTERNATIONAL App trên CH Play hoặc App Store 
 Bước 2: Nhập Mail và Password tùy ý và làm theo hướng dẫn trên app ( rất dễ bao gồm: Nick Name, Ngày sinh, Giới tính, Chiều cao) 
Bước 3: Bật bluetooth của điện thoại bạn và đứng lên cân để trải nghiệm nhé 
------------------------------------------------------
*LƯU Ý KHI CÂN 
- Đặt cân ở bề mặt phẳng, đảm bảo Cân không bị kênh 
- Không lấy kết quả của 5 lần cân đầu tiên sau khi mới mua về ( Bởi vì tất cả cân điện tử đều có 1 cảm biến thăng bằng, khi di chuyển hoặc xê dịch cân làm cảm biến bị lệch chuẩn dẫn đến kết quả chưa đúng) 
- Mỗi lần lấy cân ra sử dụng, Không lấy kết quả cân lần đầu tiên, bắt đầu tính kết quả từ lần cân thứ 2 và 3
#candientu #cansuckhoe #candientubluetooth #cansuckhoebluetooth #can', 165000.0000, N'SK_3.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (111, N'Cuộn băng ép sẹo lồi NICHIBAN', N'BĂNG DÁN SẸO LỒI NHẬT BẢN NICHIBAN 🇯🇵 ☘️☘️Công dụng:
🌼 Hạn chế sự phát triển các vết sẹo mới hoặc sẹo sau khi phẫu thuật( đặc biệt là viền , gờ sẹo mới cắt chỉ liền da), và những vùng sẹo kết những khu vực kho băng ép bằng các pp khác , tránh sẹo cọ vào quần áo, che sẹo lồi...cải thiện thẩm mỹ. 
🌼 Băng dán sẹo còn có tác dụng băng ép vào sẹo lồi để hạn chế sự phát triển của sẹo lồi. Nếu băng thường xuyên sẹo có thể giảm đi đáng kể. Với sẹo lâu nên massa cho sẹo mềm rồi băng để đc hiệu quả. 
🌼 Nhờ có áp lực ép sẹo nên băng dính chắc trên da vài ngày, đặc biệt không gây kích ứng da. Nên dán 24/24 để được hiệu quả cao nhất.
🌼 Mọi người sử dụng thường xuyên kiên trì để có hiệu quả, vì sẹo lồi ko thể chữa ngày 1 ngày 2 được ạ.
☘️☘️Cách sử dụng
Dán trực tiếp lên chỗ sẹo hoặc dùng miếng dán HISAMITSU rồi dán đè lên. Để hiệu quả tốt nhất thì dán 24/24
 💯 Xuất xứ: Nhật Bản
💯 Kích thước: dài 9m rộng 2,5cm
Với quá trình ép sẹo để có hiệu quả cao nên dùng với miếng ép sẹo lồi HISAMITSU  . Combo hoàn hảo cho ép sẹo lồi mới hình thành.
👉 Nếu cần tư vấn đừng ngại hãy chat ngay cho shop nhé. ', 65000.0000, N'SK_4.jpg', NULL, NULL, 9)
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (112, N'Băng cá nhân trong suốt Urgo Transparent', N'Băng cá nhân trong suốt Urgo Transparent Assorted 20 miếng có tính thẩm mỹ cao, nhiều lỗ thoát khí nhỏ, giúp da thông thoáng. Gạc không dính vào vết thương, không gây đau khi thay băng.
Băng keo cá nhân Urgo Transparent Assorted được thiết kế miếng gạc nằm gọn trong băng, bảo đảm ngăn cách hoàn toàn với vi khuẩn. Hơn nữa, băng keo trong suốt có tính thẩm mỹ cao, nhiều lỗ thoáng khí nhỏ tạo sự thông thoáng cho làn da trong quá trình sử dụng.
Mỗi miếng băng dán được đựng trong từng bao riêng vô trùng, kín, có lớp nền che phủ mặt dính, lớp nền được loại bỏ khi băng được sử dụng.
Chất keo acrylic an toàn, không gây dị ứng cho da, phù hợp cho làn da nhạy cảm. Tháo, gỡ dễ dàng, không gây dính keo ở da và không gây cảm giác đau rát khi vệ sinh, thay băng cá nhân mới.
Độ bám dính cao giúp băng dán được giữ lâu hơn và không gây khó chịu cho người sử dụng.
- Cách dùng
Vệ sinh vết thương bằng cồn và nước sát trùng, rửa sạch và lau khô nhẹ vết thương và khu vực xung quanh vết thương.
Dán băng cá nhân, vuốt nhẹ mép miếng băng.
Thay băng ít nhất 2 lần mỗi ngày.
- Đọc kỹ hướng dẫn sử dụng trước khi dùng.', 45000.0000, N'SK_5.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (113, N'Combo 10 bông tẩm cồn tiệt trùng Alcohol Pads', N'Bông tẩm cồn miếng nhỏ xinh xinh, ai cũng cần vài miếng sẵn trong túi
- Nhỏ gọn, rất tiện khi sử dụng. 
- Lau tay, bông tai, điện thoại, mắt kính , sát trùng , lau vết thương
- Chỉ cần xé giấy bọc bên ngoài sát trùng
- Giảm nhiễm khuẩn
- Mùi thơm khi sử dụng
Kích thước: 3 cm x 6,5 cm 

MEDIFA CAM KẾT 
- Sản phẩm nhập khẩu chính hãng, nguyên tem mác, phụ kiện đi kèm.
- MEDIFA chịu phí ship hoàn hàng nếu sản phẩm không như cam kết (Quý khách vui lòng quay clip mở hàng để đảm bảo quyền lợi hoàn hàng).
- Bao bì sản phẩm có thể thay đổi mà không cần thông báo trước tùy vào lô sản xuất từ nhà cung cấp.', 25000.0000, N'SK_6.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (114, N'Nhiệt Kế Điện Tử Beurer FT15 ', N'Nhiệt Kế Điện Tử Beurer FT15 | Thương Hiệu Đức - Bảo Hành 24 Tháng
𝐁𝐄𝐔𝐑𝐄𝐑 là thương hiệu chuyên sản xuất thiết bị, dụng cụ chăm sóc sức khỏe đến từ CHLB Đức và cũng là nhãn hàng nổi tiếng hàng đầu trên thị trường Châu Âu. Đơn vị này được thành lập từ năm 1919, cho đến nay Beurer đã có bước tiến dài trong thị trường sản thiết bị y tế nội địa và trên toàn thế giới
- Một số giải thưởng danh giá mà thương hiệu này nhận được đáng phải kể đến như: Best in Test tại cuộc thi German Technology & Red Dot Design, Best product of the year 2014; hay Reddot award 2014 winner… đây đều là những giải thưởng có quy mô và uy tín nhất trên toàn cầu

Nhiệt kế điện tử đầu mềm BEURER FT15 - THÔNG TIN SẢN PHẨM 
- Sản phẩm: Nhiệt kế điện tử đầu mềm BEURER FT15
- Thương hiệu: Beurer
- Xuất xứ: Đức
- Bảo hành: 02 năm
- Model: FT15

Nhiệt kế điện tử đầu mềm BEURER FT15 - ƯU ĐIỂM NỔI BẬT
- Nhiệt kế điện tử Beurer F15 đo nhiệt độ nhanh trong khoảng 10 giây.
- Nhiệt kế điện tử Beurer F15 đầu đo mềm, linh hoạt, an toàn với trẻ nhỏ.
- Nhiệt kế điện tử Beurer F15 sử dụng công nghệ đo tiếp xúc – Hiển thị kết quả đo theo °C và °F
- Nhiệt kế điện tử Beurer F15  được cấu tạo bằng nhựa dẻo tiêu chuẩn, không sử dụng thủy tinh hay thủy ngân.
- Nhiệt kế điện tử Beurer F15 bộ nhớ lưu trữ 1 kết quả đo gần nhất.
- Sai số đo trong khoảng cho phép +/- 0.1°C.
- Nhiệt kế điện tử Beurer F15 phát tín hiệu âm thanh báo kết quả đo.
- Nhiệt kế điện tử Beurer F15 cảnh báo sốt
- Nhiệt kế điện tử Beurer F15 có chức năng tự động tắt
- Nhiệt kế điện tử Beurer F15 không thấm nước
- Nhiệt kế điện tử Beurer F15 có thể khử trùng
- Nhiệt kế điện tử Beurer F15 có nắp bảo vệ
-------------------------------------------------------------------------------------
#nhiệt_kế_thủy_ngân
#nhiệt_kế_omron
#nhiệt_kế_microlife
#nhiệt_kế_hồng_ngoại
#nhiệt_kế_đo_trán
#nhiệt_kế_điện_tử_omron
#nhiệt_kế_điện_tử_microlife
#nhiệt_kế_điện_tử_đo_trán
#nhiệt_kế_điện_tử
#nhiệt_kế
#máy_đo_thân_nhiệt
#máy_đo_nhiệt_độ_hồng_ngoại
#máy_đo_nhiệt_độ_cơ_thể
#máy_đo_nhiệt_độ
#máy_đo_nhiêt_độ
#đo_nhiệt_độ_cơ_thể
#đo_nhiệt_độ
#cặp_nhiệt_độ
#omron
#nhiệt_kế_cho_bé 
#nhiet_ke_dien_tu 
#nhiet_ke', 155000.0000, N'SK_7.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (115, N'Máy đo huyết áp bắp tay Sinoheart BA-801 ', N'- Máy đo huyết áp Sinoheart BA801 là dòng sản phẩm bán chạy trên toàn cầu. Với ông nghệ hoàn toàn vượt trội và đặc biệt là công nghệ hoàn toàn mới so với tất cả các dòng máy đo huyết áp trên thị trường.
- Tính năng:
90 bộ lưu trữ (2 người), IHB rối loạn nhịp tim phát hiện, bảng phân loại huyết áp của WHO. Intelligense tạo áp suất
 - Chế độ đo:
Phạm vi đo:
Phạm vi áp suất: 0-37.3kpa (0-280mmhg)
Xung phạm vi: 40-199 lần/phút
Phạm vi sai số:
Áp suất tĩnh: ±0. 4kpa (± 3 mmHg)
Xung: trong vòng ± 5%

Độ dài của vòng bít: 24-34 cm (9.4-13.4 inch)
Nguồn điện cung cấp: DC6v (1.5 V 4 pin AAA, không bao gồm pin)
Tự động tắt nguồn: 60 S
Xuất hiện Kích Thước: 110x95x90mm
Lưu trữ nhiệt độ và độ ẩm: Nhiệt độ:-20-65 °C Độ ẩm: 10%-90% RH
Sử dụng nhiệt độ độ ẩm: Nhiệt độ: 5-40 °C Độ ẩm: 10%-90% RH
- Làm thế nào để sử dụng nó?
Giữ Thoải Mái trước khi đo, ngồi xuống lặng lẽ một lúc
Lòng bàn tay lên, đưa băng cổ tay song song với trái tim
Lòng bàn tay lên, giữ lượng ống và động mạch parallelled
Quấn cổ tay ban nhạc xung quanh cánh tay của bạn chặt chẽ theo hướng ngược lại, dán lại với nhau
Đặt một ngón tay vào nó là thích hợp nhất
Giữ băng cổ tay parallelled đến trái tim, lòng bàn tay lên
Nhấn nút ON/OFF, giữ thư thái và bắt đầu đo.
Bộ sản phẩm Bao Gồm:
1 x Máy Huyết áp
1 x Vòng Bít 
1 x Sách Hướng Dẫn Sử Dụng 
1x 4 pin AA', 345000.0000, N'SK_8.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (116, N'Nước rửa tay khô  Hoàng hôn xanh 50ml', N'Nước rửa tay khô tinh dầu kháng khuẩn Hoàng hôn xanh Green Sunset 50ml - Om Fountain
KHÔNG SLS – KHÔNG PARABEN – KHÔNG HÓA CHẤT ĐỘC HẠI 
THÔNG TIN CHI TIẾT
Mô tả chi tiết về sản phẩm nước rửa tay khô combo 8 chai:
- Dung tích: 50mL
- Thương hiệu: Om Fountain
- Nước rửa tay khô sử dụng cồn thực phẩm 98% (Food Grade) để an toàn khi sử dụng và sản phẩm với 70 độ cồn . Kết hợp 04 loại tinh dầu Sả chanh, Khuynh diệp, Bạc Hà và Chanh , và chiết xuất từ Bắp giúp dưỡng ẩm, không làm khô da, là dòng sản phẩm thân thiện môi trường với các nguyên vật liệu, tinh dầu tự nhiên.
----------------------
HƯỚNG DẪN SỬ DỤNG
Hướng dẫn sử dụng sản phẩm nước rửa tay khô
- Cho một lượng nhỏ lên tay, xoa đều hai tay. Không rửa lại với nước.
- Có thể rửa tay nhiều lần trong ngày.
- Dùng được cho trẻ em từ 2 tuổi trở lên.
----------------------
LƯU Ý KHI SỬ DỤNG
Lưu ý khi sử dụng sản phẩm nước rửa tay khô combo 8 chai:
- Bảo quản nơi thoáng mát, để xa tầm tay trẻ em.
- Nếu dính vào mắt, rửa ngay với nước sạch.
----------------------
THÀNH PHẦN
Thành phần nguồn gốc thực vật an toàn theo quy định của FDA của sản phẩm nước rửa tay khô combo 8 chai:
Ethanol, Aqua, Propanediol (chiết xuất từ bắp), Glycerin, Cymbopogon Flexuosus (Lemongrass) Oil, Eucalyptus Globulus (Eucalyptus) Oil, Mentha Piperita (Peppermint) Oil, Lemon (Citrus Medica Limonum) Peel Oil, PEG-40 Hydrogenated Castor Oil.
----------------------
GIỚI THIỆU VỀ OM
Kinh nghiệm 17 năm trong ngành, Om cam kết & đảm bảo về sản phẩm nước rửa tay khô combo 8 chai:
    • Chất lượng sản phẩm tốt, đảm bảo tiêu chuẩn an toàn của Bộ Y Tế
    • Sản phẩm được kiểm tra kĩ càng, nghiêm ngặt trước khi giao hàng.
    • Giao hàng ngay khi nhận được đơn hàng
#tinhdau #sa #chanh #tram #khuynhdiep #duoimuoi #thom #dauthom #tinh #dau #que #nuoc #rua #tay #kho #gel   #mini #yte  #thiennhien #hoahong #thugian  #daubuoi #argan #tramhuong #chanhsa #nguyenchat #xua #muoi #con #trung #giamstress #lam #sach #omfountain', 65000.0000, N'SK_9.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (117, N'Dung Dịch Rửa Tay Khô On1 Hương BamBoo', N'Gel rửa tay khô sát khuẩn On1 hương BamBoo Charcoal 60ml CH48 có chứa cồn (alcohol - ethanol) 70% giúp làm sạch da tay Sản phẩm có chứa Glycerin dưỡng ẩm giúp da tay mềm mịn, được kiểm nghiệm trong phòng thí nghiệm cho thấy có khả năng sát khuẩn 99,9 %  gồm: S.Typhi, S.Aureus, E.Coli, P. Aeruginosa. Sản phẩm ở dạng dung dịch nên thuận tiện khi cần vệ sinh nhanh nút bấm, tay nắm cửa hoặc bề mặt bếp, bàn ghế...

THÔNG TIN CƠ BẢN
- Thương hiệu: Gel rửa tay khô On1 Việt Nam
- Dung tích: 60ml - CH48– Loại chai xịt Nhỏ gọn, tiện dụng 
- Thành phần  Ethyl alcohol 70% còn bổ sung thêm isopropyl alcohol 3%, các chất phụ gia khác ...
- Chỉ tiêu chất lượng: Không gây kích ứng da
- Mùi hương: Hương Bamboo Charcoal êm mát dịu
THÔNG TIN CHI TIẾT 
Công dụng:
+ Gel rửa tay khô On1 sạch khuẩn 99,9%, không cần rửa lại bằng nước, rất nhanh chóng và tiện lợi.
+ Dạng gel đậm đặc và tiết kiệm hơn.
+ Sản phẩm được kiểm nghiệm trong phòng thí nghiệm cho thấy có khả năng loại bỏ các vi khuẩn gây bệnh, gồm: S.aureus, P.aeruginosa, S.flexneri, B.subtilis...
+ Hỗ trợ phòng chống các bệnh truyền nhiễm qua tiếp xúc, bảo vệ sức khỏe của bạn và cả gia đình.
+ Giúp đôi tay mềm mại sau khi rửa.
+ Có khả năng khử mùi tuyệt đối, có thể đánh bay các mùi khó chịu nhất như mùi tanh…
+ Không cần sử dụng nước, dễ dàng mang theo khi đi ra ngoài.
+ Khả năng làm sạch, sạch khuẩn tương tự các loại nước rửa tay thông thường.
- Hướng dẫn sử dụng
+ Xịt một lượng dung dịch vừa đủ vào lòng bàn tay và xoa đều đến khi khô, không cần rửa tay lại với nước. Thời gian sử dụng sản phẩm tối thiểu 30 giây.
 - Lưu ý
+Để xa tầm tay trẻ em. Không sử dụng cho trẻ em dưới 3 tuổi
+Tránh tiếp xúc với mắt, nếu dính sản phẩm vào mắt hãy rửa kỹ bằng nước, nếu kích ứng kéo dài hãy hỏi ý kiến bác sỹ. 
- Ngày sản xuất: xem trên bao bì
- Hạn sử dụng: 24 tháng kể từ NSX
- Nơi sản xuất: CÔNG TY CỔ PHẦN LIX VIỆT NAM
LIXCO VIỆT NAM CAM KẾT
- Sản phẩm chính hãng 100%
- Sản phẩm giống như hình ảnh và mô tả 
- Tư vấn, hỗ trợ 24/7 
- Hỗ trợ đổi trả theo quy định của Shopee
#on1 #nuoc_rua_tay #nuoc #rua #tay #kho #gel #dung #dich #sat #sach #khuan #nhanh #xit #long #cach #lam #nuoc #rua #tay #nuocruatay #nuocruataytaobot #gelruatay #chainuocruatay #nuocruataydietkhuan #nuocruataykho  #dietkhuan #chairuatay #nuosatkhuan #thiennhien #antoan #xaphongruatay #nuocruataykho #gelruataykho', 55000.0000, N'SK_10.jpg', NULL, NULL, 9)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (118, N'Ổ cắm điện đa năng Honjianda ', N'Ổ cắm điện chịu nhiệt đa năng thau đàn hồi cao cấp, được thiết đẹp mắt với các chức năng nổi bật sau  : 
- Vỏ ổ cắm làm bằng nhựa ABS đảm bảo : chịu nhiệt cao và đập mạnh.
- Cầu chì tự động: tự ngắt điện khi có dòng điện 
- Công tắc nguồn đảm bảo tuổi thọ 10.000 lần bật tắt.
- Lỗ cắm điện làm bằng loại thau có tính đàn hồi cao, cắm rút 5.000 lần không bị lỏng.
- Dây dẫn điện 100% đồng nguyên chất và đúng tiết diện nên đảm bảo đúng công suất.
- Chân phích cắm làm bằng hợp kim đồng Φ4.8mm chống rỉ, đúc trong nhựa cứng chống cháy.

CHÚ Ý :
- Sử dụng tải không vượt quá công suất tối đa 2.500W
- Không để công tắc bật sẵn khi cắm điện.
- Tắt công tắc ON/OFF sau khi sử dụng.
- Không sử dụng trong môi trường ẩm ướt hoặc tay dính nước.
- Để xa tầm tay trẻ em.
- Không sử dụng tiếp nếu phích cắm, dây điện hay ổ cắm điện bị hư.

Thông số sản phẩm
Công suất tối đa: 2.500W
Dây: 3M
Thông số: 250V - 10A
Cổng USB: 2 x 2A 5V
Màu sắc: Trắng + Màu ngẫu nhiên

----------
SẢN XUẤT TẠI CÔNG TY TNHH ĐIỆN GIA DỤNG HOÀNH KIẾN ĐẠT - LONG AN
Địa chỉ: Khu Công Nghiệp Hải Sơn, Ấp Bình Tiền 2, Xã Đức Hoà Hạ, Huyện Đức Hoà, Tỉnh Long An, Việt Nam
Website: www.honjianda.com.vn
Tiêu chuẩn: TCCS 01:2020/HKĐ-LA
Sản xuất tại Việt Nam

#ocamdien #diengiadung #honjianda #o_cam_dien_da_nang #ocamdiendanang #flashsale #nhacuadoisong #lifestyle #thietbidien #ocamdienUSB #o_cam_dien_USB #saleoff #shopeevn #sieusale #voucher #giamgia', 125000.0000, N'DCTI_1.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (119, N'Cầu Dao Chống Giật RCBO DOBO KOREA đa năng', N'+ CAM KẾT CHẤT LƯỢNG - HÀNG CHÍNH HÃNG - AN TOÀN TUYỆT ĐỐI  NHƯ CLIP TEST THỰC TẾ - HOÀN TIỀN 100% NẾU KHÔNG ĐÚNG CHẤT LƯỢNG - HÀNG NHÁI - HÀNG GIẢ. (Tặng kèm bút thử điện cho các đơn hàng từ 250k)
+ Tặng kèm sách hướng dẫn, Shop đánh dấu kỹ điện ra, điện vào, âm dương, test trước khi giao và có VIDEO đấu nối chi tiết, lắp đặt độc quyền - chuẩn Kỹ sư điện ĐẠI HỌC BÁCH KHOA - CAM KẾT không phải chỉ bán cho xong, có lợi nhuận mà còn là sự ân cần, tư vấn nhiệt tình và phải hồi nhanh chóng với những câu hỏi từ quý khách.
+ CÓ GIAO HỎA TỐC NHANH với khách ở  TP HCM

RCBO là dạng Aptomat Đa Năng an toàn tuyệt đối ( Bao gồm cả 3 chức năng : Chống giật điện, chống quá tải, chống chập cháy (ngắn mạch).

Xuất Xứ : Chính Hãng DOBO KOREA 
+ Điện áp hoạt động: 110V~220V - 50Hz
+ Dòng rò tác động 30mA
+ Dòng cắt ngắn mạch 4kA
+Dòng quá tải tác động 16A - 20A - 25A - 32A - 40A - 50A - 63A
+Dạ nhà dùng tiền điện trung bình 1 tháng từ 200k đến dưới 1tr  dùng 32A (nhà nhỏ ít thiết bị hay có 1 điều hòa và các thiệt bị khác)
+ Nhà dùng 1tr000 đến 1tr500 tiền điện 1 tháng  dùng 40A ( nhà có 1 điều hòa, 1 bình nóng lạnh và các tbi khác)
+ Nhà dùng 1tr500 trở lên tiền điện 1 tháng, nhiều thiết bị, nhiều tầng lầu  dùng 50A-63A ( nhà có 2,3 điều hòa, 2,3 bình nóng lạnh và các tbi khác)
+ Còn gắn riêng cho từng thiết bị, từng tầng thì dùng 16A (3000w) - 20A ( 4000w)  hoặc 25A(5000w)  ạ

Thời gian tác động 0.01 giây
Số cực 2 (Dùng làm cầu dao tổng điện gia đình, máy móc, nhà xưởng, từng tầng hoặc từng thiết bị)
SẢN PHẨM 3 CHỨC NĂNG :

CHỐNG GIẬT ĐIỆN - QUÁ TẢi - CHẬP CHÁY MẠCH . CHỈ CẦN GẮN  1 THIẾT BỊ CÓ THỂ GIẢI QUYẾT TẤT CẢ VẤN ĐỂ.
GIÚP AN TOÀN TUYỆT ĐỐI HƠN CÁC LOẠI THIẾT BỊ KHÁC TRÊN THỊ TRƯỜNG

Bảo hành:1 đổi 1 trong 1 năm nếu có bất kỳ lỗi kỹ thuật gì.
Sản phẩm là hàng chính hãng mới 100%.
QUÝ KHÁCH CÓ THỂ MUA KÈM HỘP LẮP ÂM TƯỜNG- GẮN NỔI ( BÁN KÈM - KHÔNG TẶNG )

CHÚNG TÔI CAM KẾT BÁN HÀNG BẰNG CÁI TÂM –  CHẤT LƯỢNG THẬT – UY TÍN – AN TÂM – AN TOÀN
HÀNG ĐƯỢC BẢO HÀNH ĐỔI MỚI TẬN NHÀ MIỄN PHÍ TRONG 12 THÁNG KHÔNG SỬA CHỮA.  VUI LÒNG LH TRỰC TIẾP SHOP ĐỂ XỬ LÝ SỚM .

CHÍNH SÁCH ĐỔI TRẢ
✔ Sản phẩm lỗi do nhà sản xuất được đổi lại hàng và không phải chịu bất cứ khoản phí nào.
✔ Nếu chúng tôi gửi nhầm hàng cho quý khách thì quý khách được đổi lại hoàn toàn miễn phí không phải chịu bất cứ khoản phí nào.
✔ Nếu chúng tôi gửi thiếu bất cứ sản phẩm nào của quý khách thì quý khách có thể gọi phản hồi và chúng tôi sẽ gửi thêm cho quý khách khi đó quý khách không phải mất thêm khoản phí nào nữa.
✔ Nếu sản phẩm trong quá trình gửi bị bóp méo biến dạng hay vỡ hỏng chúng tôi sẽ đổi lại cho quý khách và quý khách không phải mất thêm khoản phí nào.
**********
BẢO HÀNH
✔ Mọi sản phẩm trước khi giao đều được TEST trước - Bảo Hành chính hãng 1 đổi 1 trong 12 tháng.

#rcbo2p, #caudaochonggiat, #aptomatchonggiat, #rcbodobo, #rcbodobokorea, #dobokorea, #dobohanquoc, #caudaochonggiatdobo, ##aptomatchonggiatdobo, #caudaochongdongdo, #rcbo32, #rcbo20a, #rcbo16a, #rcbo40, #rcbo50a, #rcbo63a', 120000.0000, N'DCTI_2.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (120, N'Ổ KHOÁ TAY NẮM TRÒN ZANI INOX ', N'CÁCH SỬ DỤNG:
- Đối với khóa cửa tay nắm tròn, rất dễ sử dụng để khóa cửa chúng ta kéo cửa lại chậm và nhẹ, chốt khóa sẽ tự chạy vào lỗ yếm trên khung bao và gài chặt cửa lại chỉ cần bấm nút phía bên trong thì lúc đó tay nắm ngòai sẽ bị khóa cứng. Còn muốn mở khóa chúng ta dùng chìa vặn 45 độ về bên phải hoặc trái, khóa đã được mở, cửa sẽ mở khi chúng ta dùng tay xoay nắm cửa để kéo chốt khóa ra khỏi khung bao.
- Khi đóng, mở cửa làm vệ sinh khóa, chúng ta tuyệt đối không sử dụng cùng một lúc 2 chức năng vừa bấm và vừa xoay, như vậy sẽ dẫn đến tình trạng khóa cửa chính cứng nắm xoay phía ngòai bởi khi đóng cửa khóa sẽ tự khóa lại cho dù không bấm nút phía trong còn muốn mở cửa luôn luôn phải dùng chìa khóa
- Đặc biệt, chúng ta không được đóng mạnh cửa vì sự va đập mạnh sẽ làm cong chốt khóa hoặc lưỡi gà và chốt khóa đều bị ép nằm trong lòng yếm của khung bao dẫn đến tình trạng kẹt khóa. Chúng ta không được cắm chìa trong ổ khóa trong khi đang xoay tay nắm bởi có thể làm bung nhíp định vị và làm sút tay nắm cửa .
- Giá của đại lý phù hợp với những gia đình nhỏ và người chưa có kinh tế
- Giá cả phù hợp với với chất lượng.
#Okhoa #okhoachongtrom #okphong #khoá #cửa #cửakính 
', 65000.0000, N'DCTI_3.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (121, N'Bộ Chuyển Đổi Máy Khoan Thành Máy Cưa ', N'SẢN PHẨM CAM KẾT NHƯ MÔ TẢ
SẢN PHẨM CAM KẾT NHƯ MÔ TẢ:Máy Khoan Pin Hitachi 36V
⛔️ THÔNG SỐ KỸ THUẬT: 
- Pin nguồn: Pin 36V Li-ion 3.0Ah 
- Sạc tiêu chuẩn có đèn báo tự ngắt khi đầy 
- Tốc độ không tải: 1350 vòng/phút 
- 25 cấp độ trượt bắn vít
- 3 chức năng: Khoan, Búa và Vít 
- Đường kính khoan gỗ: 36mm 
- Đường kính khoan thép: 13mm 
- Trọng lượng: Cả hộp 2.8kg, Máy 1.5kg 
- Thời lượng 1 pin khi sử dụng liên tục: 2.5h - 3h 
- Đèn Led theo máy soi vùng tối khi khoan 
😀 Bộ SP Gồm: 1 Máy, 2 Pin, 1 Đế sạc, 1 Hộp Đựng, 24 chi tiết phụ kiện

🔔 TÍNH NĂNG VƯỢT TRỘI:Máy Khoan Pin Hitachi 36V
▶️ Chiếc máy khoan Pin HITACHI 36V - 3 chức năng nhỏ gọn mà chắc khỏe, phù hợp cho việc vặn vít, khoan gỗ, khoan sắt và đặc biệt có thể khoan, đục bê tông nhờ chế độ búa. 
▶️ Dung lượng pin cực khỏe: được trang bị công nghệ sạc pin nhanh, thời gian sử dụng lên đến hàng nhiều giờ. 
▶️ Độ bền: Máy được sản xuất theo dây truyền công nghệ NHẬT BẢN, độ bền khoan pin Hitachi 36V có thể lên đến nhiều năm. 
▶️ Công suất: Máy khoan HITACHI 36V cầm tay được trang bị công nghệ pin Max-Lithium lên tới 36V, công suất cực mạnh giúp mọi công việc của bạn được hoàn thiện nhanh chóng. 

CHẾ ĐỘ BẢO HÀNH: Máy Khoan Pin Hitachi 36V
- Bảo hành sản phẩm 12 tháng trên toàn quốc. 
- Đổi mới miễn phí trong 7 ngày đầu nếu có lỗi của nhà sản xuất.
- Cam kết sản phẩm giống như hình ảnh. Chất lượng đúng như mô tả.

CẢM ƠN QUÝ KHÁCH ĐÃ TIN DÙNG
#sietbulonghitachi#maykhoancamtay#maykhoanpin#maykhoan#maykhoanmakita#maykhoanpindewalt#maykhoanpinhitachi#118v#72v#may
CẢM PNW QUÝ KHÁCH ĐÃ TIN DÙNG
', 165000.0000, N'DCTI_4.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (122, N'Bộ tua vít mini 115  đa năng tiện lợi', N'Đặc trưng:
Bộ dụng cụ vặn vít từ tính 1.115 in 1 - bộ dụng cụ vặn vít chính xác chuyên nghiệp, bao gồm 98 đầu tua vít, tay cầm, thanh nối dài, tua vít Phillips, tua vít ngũ giác, trục mở rộng linh hoạt, thanh nối dài, nhíp ESD, chốt đẩy thẻ SIM, cốc hút LCD và các công cụ cần thiết phù hợp cho tất cả các loại công việc.
2. Bộ tua vít 115 in 1 được sử dụng rộng rãi, phù hợp với hầu hết các thiết bị hiện đại, như điện thoại di động, máy tính, máy tính xách tay, máy tính bảng, máy chơi game và các sản phẩm điện tử khác.
3. Bộ tô vít từ tính-đầu tô vít có từ tính nên rất thuận tiện khi rút vít hoặc sắp xếp các con vít thẳng hàng. Được làm bằng thép công cụ CRV với độ cứng lên đến 56HRC (dung sai: ± 2HRC). Nhíp được mạ điện trở lớp phủ ESD điện trở để ngăn chặn tĩnh điện làm hỏng các linh kiện điện tử.
4. Trọng lượng nhẹ và cấu trúc nhỏ gọn - trục linh hoạt kèm theo rất thích hợp cho các sản phẩm điện tử khó lấy. Dễ dàng mang theo, bạn có thể cho vào túi du lịch, ô tô hoặc hộp dụng cụ.
sự chỉ rõ:
Chất liệu: Thép hợp kim chrome vanadi
Loại đầu quay: đầu vuông, hình chữ Y, chữ thập, thẳng, hoa mận, lục giác, ngôi sao, Pozi
Trọng lượng: 530g
Kích thước sản phẩm: 15,5 * 9 * 4,5cm
Kích thước đóng gói: 18 * 10,7 * 6cm
Gói bao gồm:
Bộ tuốc nơ vít chính xác 1 * 115 trong 1', 110000.0000, N'DCTI_5.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (123, N'Búa cao su cao cấp Kapusi ', N'Búa cao su cao cấp Kapusi Nhật Bản chính hãng 900g, 680g, 450g - Dụng cụ cầm tay thuận tiện
Thông tin cơ bản:
- Loại sản phẩm: Búa cao su cao cấp Kapusi Nhật Bản
- Hãng sản xuất: Kapusi
- Chất liệu: Cao su cao cấp
- Màu sắc: Cam, đen
Thông tin chi tiết:
- Với chất liệu cao su tinh luyện cao cấp, đầu búa trở nên vô cùng cứng cáp, bền bỉ. Chất liệu này cũng rất nhẹ, giúp bạn cầm nắm chắc chắn, dễ thao tác và linh hoạt hơn.
- Sản phẩm giúp bạn có thể lát nền gạch khít hơn, chắc chắn hơn, làm đồ thủ công mĩ nghệ được dễ dàng và đẹp mắt hơn.
- Tay cầm chắc chắn
- Cán búa thiết kế vừa vặn với các khớp ngón tay sẽ giúp bạn thao tác dễ dàng và thuận tiện.
- Cán búa bọc nhựa cao cấp, có độ bền cao và chống trơn hiệu quả.
- Thiết kế hợp lý, tiện dụng
- Phối màu cam đen làm sản phẩm nổi bật, dễ tìm thấy.
- Chất lượng tuyệt đối, hiệu quả tối ưu.
- Cán cầm vừa tay với thiết kế gắn chặt cùng đầu búa, đồng thời bên ngoài được bọc nhựa êm ái kết hợp các vân nổi có tác dụng chống trơn trượt, giúp người dùng cảm thấy thoải mái hơn khi thao tác.
- Điểm nổi bật nhất chính của đầu búa là đặc tính không phát ra tia lửa hay làm ảnh hưởng đến bề mặt vật dụng, giúp bạn có thể lát nền gạch khít hơn, chắc chắn hơn hoặc dùng để làm đồ thủ công mỹ nghệ hay đóng những vật liệu dễ vỡ, trầy xước...
- Kiểu Búa cao su Kapusi dáng nhỏ gọn, vừa vặn, không chiếm nhiều diện tích khi mang theo sử dụng cũng như dễ dàng bảo quản, cất giữ gọn gàng. Búa cao su Kapusi thường được sử dụng trong các ngành công nghiệp, xây dựng, chế tạo, sửa chữa, lắp ráp... với tính ứng dụng cao.
● Bảo hành 3 tháng
● Đổi mới trong vòng 14 ngày nếu có lỗi của nhà sản xuất', 70000.0000, N'DCTI_6.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (124, N'Búa sừng dê 8oz/ 227g Asaki AK-9500 ', N'* Đặc điểm nổi bật
- Chất liệu thép cao cấp, cứng cáp
- Sản xuất tiêu chuẩn Nhật Bản
- Quy cách: 8oz/ 227g
- An toàn dễ thao tác
- Dùng để đóng, nhổ đinh, tán kim loại
- Thiết kế 2 đầu thông minh
- Thân búa làm từ thép cứng
- Tay cầm bọc nhựa có vân tạo cảm giác thoải mái, chắc tay
- Mã sản phẩm: AK-0373
- Thương hiệu: Asaki

* Mô tả chi tiết:
- Búa sừng dê cán thép Asaki theo tiêu chuẩn Nhật Bản. Thiết kế 2 đầu tiện lợi, sử dụng hiệu quả
- Búa thiết kế 2 đầu: 1 đầu tròn để đóng đinh và một đầu sừng dê dùng để nhổ, tán đinh. Lưỡi búa được thiết kế cải tiến với độ cong và dài phù hợp giúp tăng hiệu quả khi nhổ đinh.
- Tay cầm chắc chắn và vừa vặn. Cán búa được thiết kế vừa vặn với các khớp ngón tay sẽ giúp bạn thao tác dễ dàng và thuận tiện. 
- Búa sừng dê cán thép Asaki có đầu búa được làm từ thép carbon không gỉ cao cấp đảm bảo độ cứng cáp, bền bỉ, không bị biến dạng khi chịu lực cao hay va đập mạnh, cho tuổi thọ sản phẩm lâu dài để bạn yên tâm sử dụng.

* Thông tin nhà sản xuất:
- Asaki là nhà sản xuất máy móc và dụng cụ cầm tay chuyên nghiệp nổi tiếng thế giới đã tạo ra những sản phẩm chất lượng siêu bền như kềm cộng lực, mỏ lết răng, kềm bấm, kềm bằng, kềm nhọn, kềm cắt, kềm rút rivet, kềm thủy lực bấm đầu cosse, kích nâng, palăng, ê tô, v.v….

- Các sản phẩm được sản xuất tại nhà máy Asaki đều sử dụng chất liệu thép cao cấp và nhựa Polypropylene (PP) và Thermoplastic Rubber (TPR) với kiểm định 100% an toàn không chứa BPA đúng tiêu chuẩn Nhật theo công nghệ hiện đại nhất hiện nay, có thể sản xuất ra các sản phẩm dụng cụ cầm tay có độ bền rất cao và an toàn để sử dụng mà không có ảnh hưởng tiêu cực tới sức khỏe. Khi sử dụng sản phẩm Asaki bạn có thể hoàn toàn yên tâm về chất lượng và độ an toàn, vì các sản phẩm Asaki trước khi được đưa ra thị trường đều phải trải qua các khâu kiểm tra nghiêm ngặt để đảm bảo chất lượng tốt nhất đưa tới tay người tiêu dùng. Chính những ưu điểm này đã tạo nên thương hiệu Asaki nổi tiếng của ngày hôm nay và được chuyên gia, người tiêu dùng ưa chuộng sử dụng phổ biến trên toàn thế giới.

- Tại Việt Nam, sản phẩm Asaki như một dụng cụ không thể thiếu trong một số ngành công nghiệp, cơ khí, xây dựng hay sửa chữa và nhận được sự tín nhiệm rất cao của chuyên gia, người tiêu dùng góp phần tạo dựng được chỗ đứng vững chắc trên thị trường.

#Búa #buacango #Búasừngdê #Búanhổđinh #buanhodinh #buasungde  #Asaki', 80000.0000, N'DCTI_7.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (125, N'Máy khò nhiệt Talon 2000w ', N'LƯU Ý : HÀNG CHÍNH HÃNG CÓ TEM 7 MÀU CHỐNG HÀNG GIẢ , CÔNG TẮC ÊM KHÔNG BỊ KẸT NHƯ HÀNG GIẢ. Có Điều Chỉnh Nhiệt Độ Vặn Đằng Sau High/Low ,Hàng Nhái Không Có . 

*CÔNG DỤNG: 
-Máy khò Talon TH-8623- 2000W là loại máy rất hữu ích trong công việc như hoà tan vật liệu, kết dính chúng lại với nhau hay loại bỏ những vật liệu khi chúng không còn tác dụng nữa. 
- Làm co các vật liệu bao gói bằng nhựa - Loại bỏ các lớp sơn cũ trên bề mặt 
- Làm bong các loại keo, băng dính , các vật liệu dán 
- Làm tan các nguyên liệu đông lạnh, dầu mỡ 
- Làm mềm các vật liệu hàn 

*Đặc điểm của sản phẩm: 
-Máy Khò Nóng Talon được làm từ chất liệu nhựa cao cấp đem đến độ bền tuyệt đối, bên cạnh đó là khả năng chống chịu va đập cực tốt cũng như độ chịu nhiệt cao mang lại cho người dùng sự an toàn và thoải mái, yên tâm khi sử dụng sản phẩm này. 

THÔNG SỐ KĨ THUẬT: 
-Thương hiệu : Talon chính hãng 
Chú ý: hàng chính hãng có điều chỉnh nhiệt độ vặn đằng sau high/low ,hàng nhái không có . 
-Công tắc : on/off , high/low 
-Nhiệt độ: 50º - 600ºC 
-Công suất: 2000W 

LƯU Ý : Khi dùng máy khò nhiệt xong các bạn treo ngược máy lên để tránh nhiệt độ cao làm hỏng ruột máy khò đảm bảo máy sử dụng được lâu bền

CAM KẾT HÀNG CHÍNH HÃNG CÓ TEM 7 MÀU CHỐNG HÀNG GIẢ , CÔNG TẮC MÀU ĐEN GẠT LÊN XUỐNG RẤT ÊM VÀ NHẸ , ĐẦU NÒNG CỦA MÁY LÀM BẰNG INOX 304 RẤT DÀY , CÁC THANH CHẮN RẤT DÀY VÀ CHẮC CHẮN 

- Đảm bảo 100% hình ảnh, video shop tự chụp,tự quay 
- Hàng hoàn toàn giống 100% trên ảnh thực.  
- Đối với chúng tôi Uy tín - Chất Lượng Niềm Tin của khách hàng luôn được đặt lên hàng đầu.

#may#kho#nong#talon#2000w#nhiet#maykho#khonong#khonhiet#thoi#hoi#nong#khotalon#maykhotalon#maykhonhiet#thoihoinong#khonhiettalon#mangco#mang#co#maycomang#k', 275000.0000, N'DCTI_8.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (126, N'Máy rửa xe mini HONDA vàng áp lực 2900W - 3500W', N'Ducthanh Store Uy tín - Chất lượng - Dịch vụ tốt
ĐIỆN MÁY Nhật Việt
CHẤT LƯỢNG LÀ HÀNG ĐẦU - UY TÍN LÀ SÓ 1
Cam kết hỗ trợ đổi, trả và bảo hành tốt nhất
BÁN BUÔN - BÁN LẺ - GIÁ TỐT
Hotline: 0968 685 246
CẢM ƠN QUÝ KHÁCH ĐÃ LỰA CHỌN SẢN PHẨM CỦA CHÚNG TÔI
THUỘC TÍNH SẢN PHẨM 

- Xuất xứ: Nhật Bản.  CHI TIẾT SẢN PHẨM 

-  Máy rửa xe Honda
- Tên sản phẩm : Máy bơm xịt rửa xe công suất mạnh
- Thương hiệu : Honda
- Công suất 2900w
- Loại mới 3500W
- Bảo hành sửa chữa thay thế linh kiện miễn phí: 12 tháng .
- tiêu hoa ~ 10.5 lít/ phút , 480 lít / h
- Bao gồm : 

1. Dây áp lực phun dài 15m , 
2. Súng phun máy rửa xe , 
3. Bình chứa xà phòng 
4. Dây hút nước đầu vào  2m
5. Đầu lọc tạp chất bẩn 
6. Cần nối súng dài

- Động cơ : chạy bằng moto từ ( nên máy hoạt động êm và khỏe so với các dòng máy chạy bằng chổi than )
- Chức năng : 

1. Tự hút nước ở trong xô 
2. Tự ngắt khi nhả cò
3. Có chế độ rửa re
4. Có chế độ phun xà bông
5. Có chế độ tưới cây

- Trọng lượng máy : 8 kg 
- Trọng lượng cả hộp 11kg
- Kết cấu gọn, không chiếm diện tích và không gian, tiện dụng, dễ dàng khi di chuyển
☎ SĐT/ZALO:
——————————————————————— 
🚛 Ship toàn quốc - Giao hàng tận nơi - Thanh toán tại nhà - Cho kiểm Tra Hàng trước khi thanh toán 
📞Hotline mua hàng:', 1299000.0000, N'DCTI_9.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (127, N'Máy rửa xe mini cầm tay công suất lớn ', N'Máy rửa xe mini dùng pin áp lực cao cầm tay rửa xe gia đình 24VF có pin dự phòng
TÍNH NĂNG:
-Tự Động Tắt Khi Ko Dùng. 
- Bộ lọc tốt bằng thép không gỉ tích hợp, lọc sâu và hiệu quả cao các tạp chất trong nước. 
- Súng nước đa chức năng có thể chuyển đổi 
- Loại nước theo ý muốn, và lưu lượng nước có thể được điều chỉnh dần từ nhỏ sang lớn bằng cách xoay vòi phun, và có thể chuyển đổi điều chỉnh dòng nước thành tia tập chung và tia phun sương theo ý muốn. 
- Tuổi thọ pin mạnh mẽ, pin lithium 11000r/min giúp kéo dài tuổi thọ của máy. 
- Có thể dùng làm súng nước rửa, Dụng cụ tưới vườn. 
- Lý tưởng để tưới vườn, tưới tiêu nông nghiệp, rửa xe, vệ sinh gia đình, v. v. 

Máy rửa xe gia đình mini cầm tay total dùng pin 24VF áp lực cao bình phun bọt tuyết cao áp giá rẻ
THÔNG SỐ KỸ THUẬT: 
- Chất liệu: Silicone + thép không gỉ. 
- Màu sắc: Đen.
- Moden: YLT -21.
- Công suất: 400W. 50/60HZ.
- Áp suất cực đại: 30bar.
- Kích thước: 35x2 0cm/13.8x7.9''''

BỘ SẢN PHẨM bao gồm:
✔️.Tặng 1 bình tạo bọt .
✔️ 1 Dây dẫn nước 5m.
✔️ 1 cút lọc rác. 
✔️ 1 đầu nối dẫn nước đầu vào. 
✔️ 1 sạc 
✔️ 1 đầu tia chùm. 
✔️ 1 đầu tia phun sương. 
✔️ 1 Thân máy + đầu vòi dài.
Máy rửa xe gia đình là gì?
Máy rửa xe gia đình hay còn được gọi là máy rửa xe mini, là dòng máy xịt rửa cao áp nhỏ được dùng chủ yếu trong các gia đình. Với thiết kế nhỏ gọn, kết cấu đơn giản và dễ sử dụng, dòng sản phẩm máy rửa xe gia đình này ngày càng phổ biến và được yêu thích, giúp các gia đình chủ động hơn trong việc vệ sinh xe cộ, sân vườn và nhà cửa.

Nguyên lý hoạt động
Máy rửa xe gia đình về cơ bản hoạt động dựa trên nguyên lý bơm nước và đẩy áp lực nước. Khi nắm rõ được nguyên lý hoạt động của loại máy rửa xe mini này, bạn có thể yên tâm sử dụng sản phẩm.

Cụ thể các bước hoạt động của máy rửa xe gia đình được tóm tắt như sau:
Bước 1: Khi bạn khởi động máy, động cơ sẽ bắt đầu quay và nóng lên.
Bước 2: Máy sẽ bơm nước từ thùng chứa bên ngoài vào trong máy. Khi hút nước, các đầu lọc của ống dẫn sẽ tiến hành lọc cặn bẩn trong nước, không để cặn bẩn chui vào máy làm hỏng động cơ và chi tiết máy bên trong.
Bước 3: Sau đó, động cơ máy hoạt động và tạo năng lượng cho piston của đầu bơm di chuyển.
Bước 4: Piston đầu bơm sẽ di chuyển xuống, nước được van hút vào buồng chứa.
Bước 5: Khi piston di chuyển lên phía trên, nước sẽ được đẩy ra qua van áp suất về phía ống dẫn và lúc này áp lực của nước rất cao. 
Bước 6: Van áp suất đẩy mạnh bên trong kết hợp với ống dẫn nhỏ qua súng phun cao áp sẽ làm cho nguồn nước được phun ra thẳng và mạnh.
#mayruaxe #mayruaxemini #mayruaxeapluc #mayxitruaxe #mayruaxecamtay #mayruaxegiadinh #maybomruaxe #mayruaxecaoap #mayruaxedungpin #mayruaxeapluccao #mayruaxepin', 650000.0000, N'DCTI_10.jpg', NULL, NULL, 8)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (1128, N'Sách - Một Cuốn Sách Trầm Cảm', N'Công ty phát hành: AZ Việt Nam
Nhà xuất bản: NXB Thanh Niên
Tác giả: macmart
Loại bìa: Bìa Mềm
Số trang: 208
Năm xuất bản: 2022

Một Cuốn Sách Trầm Cảm “Ở nơi đây mình không bán nụ cười mình chỉ bán nước mắt và buồn hiu ở nơi đây mình không bán tình yêu chỉ có cô liêu và những ngày quạnh quẽ.” Một cuốn sách trầm cảm hay còn có tên Một cuốn sách của macmart là quyển tản văn và thơ bộc bạch những tâm tư, cảm xúc của một người trẻ, một trái tim non dại, một tâm hồn chênh vênh, khắc khoải, đớn đau khi phải đối mặt với hiện thực cuộc sống từ những ngày biết tự ý thức cho đến những bước chân tập tễnh đầu tiên trên hành trình tự trưởng thành, mà chắc hẳn ai cũng từng một lần cảm thấy. Bắt đầu bằng những câu chuyện kể, những lời độc thoại cô đơn với chính mình, nhưng rồi sự xuất hiện của gia đình, bạn bè, của những người xa lạ đã mang đến cho “đứa trẻ” muôn vàn cảm xúc khác biệt. Có thể là chút hy vọng nhỏ nhoi, cũng có thể là nỗi đau tột cùng hay sự thất vọng ngập tràn, tuy nhiên dường ...', 82000.0000, N'S_1.jpg', 0, 0, 10)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [ProductPrice], [ProductImage], [ProductQuantity], [ProductSold], [CategoryID]) VALUES (1133, N'Áo nam 1', N'ĐỒng Hồ', 85000.0000, N'DH_3.jpg', 0, 0, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
SET IDENTITY_INSERT [dbo].[UserRole] On
Insert Into UserRole(RoleID,RoleName) Values 
(1,N'Admin'),
(2,N'User')
