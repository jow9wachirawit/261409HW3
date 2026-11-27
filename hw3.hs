-- excercise
-- 1.1 zipper curried version 
zipper' (x:xs) (y:ys) = (x,y) : zipper' xs ys
zipper' _ _ = []
-- P'Pai rum sai poom

-- 1.2 what is type of zipper' ?
-- zipper' :: [a] -> [b] -> [(a, b)]

-- 1.3 what's the type of zipper' [] ?
-- zipper' [] :: [b] -> [(a, b)]

-- 2.1 write fac
fac 0 = 1
fac n = n * fac (n-1)

-- 2.2 type of fac
-- fac :: (Eq t, Num t) => t -> t

-- 2.3 is your implementation of fac safe?
-- ไม่ปลอดภัย เพราะ ทุกไทป์ที่ compare (Eq) ได้ใส่เข้าไปใน func. ได้หมด แต่ระเบิดไม่ว่าจะเป็นทศนิยม หรือ จำนวณลบ 
-- ดักเคส ทศนิยม และ จำนวณลบ ตั้งแต่แรก แล้ว throw error ตั้งแต่แรก จะได้ไม่ต้องรอ stack overflow พ 
