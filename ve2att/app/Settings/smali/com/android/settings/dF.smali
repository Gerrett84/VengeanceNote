.class Lcom/android/settings/dF;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic FG:Lcom/android/settings/CryptKeeper;

.field final synthetic Kt:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/settings/dF;->FG:Lcom/android/settings/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings/dF;->Kt:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/dF;->Kt:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 516
    return-void
.end method
