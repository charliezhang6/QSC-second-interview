package main
import (
	"fmt"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/postgres"
)
type Student struct {
	ID            uint
	Name          string
	Age           int
	Gender        int
	CurrentClass  string
	FreshmanClass string
	ZjuId         int64
}

func main() {
	db, err := gorm.Open("postgres", "host=localhost port=5432 user=gorm dbname=test password=125690")
	dsn := "user=gorm password=gorm dbname=gorm port=9920 sslmode=disable TimeZone=Asia/Shanghai"
	defer db.Close()
	db.AutoMigrate(&Student{})
	u1:=Student{4,"小龙",21,1,"高分子1902","能化高1915",3190100903}
	db.Create(&u1)
	var uu Student
	db.Find(&uu, "name=?", "小张")
	fmt.Printf("%d", uu.ZjuId)
	var student Student
	db.First(&student,"Age>?",19)
	fmt.Printf("%s",student.Name)
	db.Delete(&u1)
}