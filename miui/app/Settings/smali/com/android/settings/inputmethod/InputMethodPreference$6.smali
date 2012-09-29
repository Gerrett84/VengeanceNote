.class Lcom/android/settings/inputmethod/InputMethodPreference$6;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic IG:Lcom/android/settings/inputmethod/InputMethodPreference;

.field final synthetic IR:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->IG:Lcom/android/settings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->IR:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->IR:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->a(ZZ)V

    .line 266
    return-void
.end method
