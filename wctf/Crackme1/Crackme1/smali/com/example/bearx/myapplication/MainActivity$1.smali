.class Lcom/example/bearx/myapplication/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/bearx/myapplication/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/bearx/myapplication/MainActivity;

.field final synthetic val$et_name:Landroid/widget/EditText;

.field final synthetic val$et_pwd:Landroid/widget/EditText;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/example/bearx/myapplication/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$1;->this$0:Lcom/example/bearx/myapplication/MainActivity;

    iput-object p2, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$et_name:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$et_pwd:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$et_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/example/bearx/myapplication/MainActivity$1;->this$0:Lcom/example/bearx/myapplication/MainActivity;

    invoke-virtual {v1, p1, v0}, Lcom/example/bearx/myapplication/MainActivity;->doSomeThing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/example/bearx/myapplication/MainActivity$1;->val$tv:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/example/bearx/myapplication/Util;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
