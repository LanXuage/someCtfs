.class public Lcom/example/bear/helloworld/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hi"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public native dowork()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001a

    .line 22
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/MainActivity;->setContentView(I)V

    .line 24
    invoke-static {}, Lcom/example/bear/helloworld/MyApplication;->getInstance()Landroid/content/Context;

    move-result-object p1

    const-string v0, "The Game in On!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const p1, 0x7f070089

    .line 25
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f070035

    .line 26
    invoke-virtual {p0, v0}, Lcom/example/bear/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07001d

    .line 28
    invoke-virtual {p0, v1}, Lcom/example/bear/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 29
    new-instance v2, Lcom/example/bear/helloworld/MainActivity$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/example/bear/helloworld/MainActivity$1;-><init>(Lcom/example/bear/helloworld/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07001e

    .line 48
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 49
    new-instance v1, Lcom/example/bear/helloworld/MainActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/example/bear/helloworld/MainActivity$2;-><init>(Lcom/example/bear/helloworld/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public native stringFromJNI(Ljava/lang/String;)Z
.end method
