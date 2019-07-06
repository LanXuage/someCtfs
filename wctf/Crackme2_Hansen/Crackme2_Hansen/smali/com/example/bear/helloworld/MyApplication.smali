.class public Lcom/example/bear/helloworld/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static instance:Landroid/content/Context;

.field private static view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/example/bear/helloworld/MyApplication;->instance:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    invoke-virtual {p0}, Lcom/example/bear/helloworld/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/example/bear/helloworld/MyApplication;->instance:Landroid/content/Context;

    return-void
.end method
