Create Database WebsiteMuaSam
Go
Use WebsiteMuaSam
Go
---Bảng Phân Quyền
Create Table UserRole(
RoleID int identity(1,1) primary key,
RoleName nvarchar(50)
);

--Bảng Danh Mục
Create Table Categories(
CategoryID int identity(1,1) primary key,
CategoryName nvarchar(50),
CategoryImage nvarchar(20)
);
--Bảng Người Dùng
Create Table Users(
UserID int identity(1,1) primary key,
UserName nvarchar(50),
Email nvarchar(70),
PassWord nvarchar(100),
PassWordComfirm nvarchar(100),
Address nvarchar(200),
PhoneNumber nvarchar(11),
ImageUser nvarchar(20),
RoleID int,
Foreign key (RoleID) references UserRole(RoleID),
);
Set identity_insert	 Users On;
Insert Into Users Values (3,N'Admin',N'admin@gmail.com',N'admin',N'admin',null,null,2)
--Bảng Sản Phẩm
Create Table Products(
ProductID int identity(1,1) primary Key,
ProductName nvarchar(150),
ProductDescription nvarchar(max),
ProductPrice money ,
ProductImage nvarchar(20),
ProductQuantity int,
ProductSold int,
CategoryID int ,
Foreign key (CategoryID) references Categories(CategoryID),
);
---Bảng Trạng Thái Đơn Hàng
Create Table OrderStatus(
StatusID int  primary key,
StatusName nvarchar(20),
);
Insert Into OrderStatus(StatusID,StatusName) Values
(1,N'Đang Xử Lý'),
(2,N'Đang Giao'),
(3,N'Thành Công'),
(4,N'Đã Hủy')

Delete OrderStatus
--Bảng Đơn Hàng
Create Table Orders(
OrderID int identity(1,1) primary key,
UserID int,
TotalMoney money,
DateOrder Date,
StatusID int,
Foreign key (UserID) references Users(UserID),
Foreign key (StatusID) references OrderStatus(StatusID)
);

--Bảng Giỏ Hàng
Create Table OrderDetails(
ID int identity(1,1) primary key,
OrderID int,
ProductID int,
Amount	 int,
Price money,
Foreign key (OrderID) references Orders(OrderID),
Foreign key (ProductID) references Products(ProductID)
);
---Bảng Bình Luận
Create Table Comment(
CommentID int identity(1,1) primary key,
UserID int,
ProductID int,
CommentText nvarchar(max),
DateComment Date,
Rating int,
Foreign key (UserID) references Users(UserID),
Foreign key (ProductID) references Products(ProductID)
);

--Bảng Yêu Thích
Create Table WishList(
WishListID int identity(1,1) primary key,
UserID int,
ProductID int,
Foreign key (UserID) references Users(UserID),
Foreign key (ProductID) references Products(ProductID)
);
---Bảng Cart
Create Table Cart(
CartID int identity(1,1) primary key,
UserID int,
ProductID int,
Quantity int,
TotalMoney money,
Price money,
Foreign key (UserID) references Users(UserID),
Foreign key (ProductID) references Products(ProductID)
);
Set identity_insert	 Users On;
Insert Into Users(UserID,UserName ,Email ,PassWord  ,PassWordComfirm ,Address ,PhoneNumber ,ImageUser ,RoleID) Values
(1,N'Cming',N'minh1@gmail.com',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'Quận 9',N'0123',N'a.jpg',2),
(2,N'Minh',N'minh2@gmail.com',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'Quận 9',N'0123',N'a.jpg',2),
(3,N'Admin',N'admin@gmail.com',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',N'Quận 9',N'0123',N'a.jpg',1),
