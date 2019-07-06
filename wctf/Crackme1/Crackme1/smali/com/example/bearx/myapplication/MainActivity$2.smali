.class Lcom/example/bearx/myapplication/MainActivity$2;
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

    .line 38
    iput-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$2;->this$0:Lcom/example/bearx/myapplication/MainActivity;

    iput-object p2, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$et_name:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$et_pwd:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$et_name:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$et_pwd:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$et_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 44
    iget-object p1, p0, Lcom/example/bearx/myapplication/MainActivity$2;->val$tv:Landroid/widget/TextView;

    const-string v0, "Welcome!"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
