.class Lcom/android/settings/bf;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sc:Lcom/android/settings/UserDictionarySettings;

.field final synthetic sm:Landroid/widget/EditText;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/bf;->sc:Lcom/android/settings/UserDictionarySettings;

    iput-object p2, p0, Lcom/android/settings/bf;->sm:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/bf;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings/bf;->sc:Lcom/android/settings/UserDictionarySettings;

    iget-object v1, p0, Lcom/android/settings/bf;->sm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/UserDictionarySettings;->a(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/bf;->sc:Lcom/android/settings/UserDictionarySettings;

    invoke-static {v0}, Lcom/android/settings/UserDictionarySettings;->a(Lcom/android/settings/UserDictionarySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bf;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 258
    :cond_0
    return-void
.end method
