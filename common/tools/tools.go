package tools

import (
	"crypto/md5"
	"fmt"
	"io"
	"time"
)

func CreateUid() (uuid string) {
	t := time.Now()
	h := md5.New()
	io.WriteString(h, "crazyof.me")
	io.WriteString(h, t.String())
	uuid = fmt.Sprintf("%x", h.Sum(nil))
	return
}
