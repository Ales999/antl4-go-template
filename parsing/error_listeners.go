package parsing

import (
	"fmt"

	"github.com/antlr/antlr4/runtime/Go/antlr"
)

type CustomErrorListener struct {
	*antlr.DefaultErrorListener
}

// Это  мой обработчик ошибок синтасиса ( @override  дефоттного DefaultErrorListener )
func (err *CustomErrorListener) SyntaxError(recognizer antlr.Recognizer,
	offendingSymbol interface{}, line, column int, msg string, e antlr.RecognitionException) {

	// Handle the syntax error here
	fmt.Printf("Custom Error Info line: %d, column: %d\t", line, column)
	fmt.Println("Msg Error:", msg)
	//fmt.Println(e.GetMessage())
	fmt.Println("--- === === ---")
	//recognizer.GetRuleNames()

}
