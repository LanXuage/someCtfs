.class public Lcom/example/bearx/myapplication/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public native doSomeThing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 21
    invoke-virtual {p0, p1}, Lcom/example/bearx/myapplication/MainActivity;->setContentView(I)V

    const-string p1, "test-jni"

    .line 22
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const p1, 0x7f07001e

    .line 23
    invoke-virtual {p0, p1}, Lcom/example/bearx/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f07001f

    .line 24
    invoke-virtual {p0, v0}, Lcom/example/bearx/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070039

    .line 25
    invoke-virtual {p0, v1}, Lcom/example/bearx/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f07003a

    .line 26
    invoke-virtual {p0, v2}, Lcom/example/bearx/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f07008b

    .line 27
    invoke-virtual {p0, v3}, Lcom/example/bearx/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 28
    new-instance v4, Lcom/example/bearx/myapplication/MainActivity$1;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/example/bearx/myapplication/MainActivity$1;-><init>(Lcom/example/bearx/myapplication/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance p1, Lcom/example/bearx/myapplication/MainActivity$2;

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/example/bearx/myapplication/MainActivity$2;-><init>(Lcom/example/bearx/myapplication/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
