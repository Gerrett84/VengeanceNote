.class Lcom/android/settings/dj;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic BP:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/settings/dj;->BP:Lcom/android/settings/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/dj;->BP:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->f(Lcom/android/settings/CryptKeeper;)V

    .line 546
    return-void
.end method
