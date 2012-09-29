.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# instance fields
.field private final BX:Ljava/lang/String;

.field private final BY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BX:Ljava/lang/String;

    .line 176
    if-nez p2, :cond_0

    .line 177
    const v0, 0x7f0b0451

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BY:Ljava/lang/String;

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f0b0450

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BY:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p2}, Lcom/android/settings/cu;->X(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BY:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public ie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BX:Ljava/lang/String;

    return-object v0
.end method

.method public if()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BX:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->BY:Ljava/lang/String;

    return-object v0
.end method
