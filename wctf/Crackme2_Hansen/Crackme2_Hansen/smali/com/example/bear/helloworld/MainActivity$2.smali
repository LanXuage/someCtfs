.class Lcom/example/bear/helloworld/MainActivity$2;
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

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/bear/helloworld/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/example/bear/helloworld/MainActivity$2;->this$0:Lcom/example/bear/helloworld/MainActivity;

    iput-object p2, p0, Lcom/example/bear/helloworld/MainActivity$2;->val$password:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/example/bear/helloworld/MainActivity$2;->val$password:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "Clear"

    .line 55
    invoke-static {p1}, Lcom/example/bear/helloworld/Control;->toast(Ljava/lang/String;)V

    return-void
.end method
