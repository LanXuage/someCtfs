.class Lcom/example/bear/helloworld/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bear/helloworld/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bear/helloworld/MainActivity;

.field final synthetic val$msg:Landroid/widget/TextView;

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/bear/helloworld/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->this$0:Lcom/example/bear/helloworld/MainActivity;

    iput-object p2, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$password:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$msg:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->this$0:Lcom/example/bear/helloworld/MainActivity;

    iget-object v0, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/bear/helloworld/MainActivity;->stringFromJNI(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$msg:Landroid/widget/TextView;

    const-string v0, "Congratulation!"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$1;->val$msg:Landroid/widget/TextView;

    const-string v0, "Opps!"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
