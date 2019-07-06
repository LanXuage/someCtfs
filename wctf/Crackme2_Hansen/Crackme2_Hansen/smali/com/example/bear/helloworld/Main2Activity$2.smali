.class Lcom/example/bear/helloworld/Main2Activity$2;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bear/helloworld/Main2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bear/helloworld/Main2Activity;

.field final synthetic val$editText1:Landroid/widget/EditText;

.field final synthetic val$editText2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/bear/helloworld/Main2Activity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/example/bear/helloworld/Main2Activity$2;->this$0:Lcom/example/bear/helloworld/Main2Activity;

    iput-object p2, p0, Lcom/example/bear/helloworld/Main2Activity$2;->val$editText1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/example/bear/helloworld/Main2Activity$2;->val$editText2:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "Name or Password Error!"

    .line 37
    invoke-static {p1}, Lcom/example/bear/helloworld/Control;->toast(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/example/bear/helloworld/Main2Activity$2;->val$editText1:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/example/bear/helloworld/Main2Activity$2;->val$editText2:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/example/bear/helloworld/Main2Activity$2;->val$editText1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
