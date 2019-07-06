.class public Lcom/example/bear/helloworld/Main2Activity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Main2Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 18
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/Main2Activity;->setContentView(I)V

    const p1, 0x7f07001f

    .line 20
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f070031

    .line 21
    invoke-virtual {p0, v0}, Lcom/example/bear/helloworld/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f070032

    .line 22
    invoke-virtual {p0, v1}, Lcom/example/bear/helloworld/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 23
    new-instance v2, Lcom/example/bear/helloworld/Main2Activity$1;

    invoke-direct {v2, p0}, Lcom/example/bear/helloworld/Main2Activity$1;-><init>(Lcom/example/bear/helloworld/Main2Activity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07001e

    .line 31
    invoke-virtual {p0, p1}, Lcom/example/bear/helloworld/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 33
    new-instance v2, Lcom/example/bear/helloworld/Main2Activity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/example/bear/helloworld/Main2Activity$2;-><init>(Lcom/example/bear/helloworld/Main2Activity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
