.class Lcom/android/settings/ap;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gt:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings/ap;->gt:Lcom/android/settings/ProxySelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/ap;->gt:Lcom/android/settings/ProxySelector;

    iget-object v0, v0, Lcom/android/settings/ProxySelector;->mc:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/ap;->gt:Lcom/android/settings/ProxySelector;

    iget-object v0, v0, Lcom/android/settings/ProxySelector;->md:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/ap;->gt:Lcom/android/settings/ProxySelector;

    iget-object v0, v0, Lcom/android/settings/ProxySelector;->me:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method
