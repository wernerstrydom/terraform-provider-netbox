package seed

import (
    "fmt"
    "os"
    "os/exec"
)

func Seed() error {

    // if the devicetype-library directory exists, delete it and clone the latest version

    if _, err := os.Stat("devicetype-library"); err == nil {
        err = os.RemoveAll("devicetype-library")
        if err != nil {
            fmt.Println(err)
            return err
        }
    }

    // git clone
    c := exec.Command("git", "clone", "https://github.com/netbox-community/devicetype-library.git")
    err := c.Run()
    if err != nil {
        fmt.Println(err)
        return err
    }

    return nil
}
