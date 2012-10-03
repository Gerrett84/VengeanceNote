.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# static fields
.field private static final LA:[Ljava/lang/String;


# instance fields
.field private final Lw:Landroid/widget/EditText;

.field private final Lx:Landroid/widget/EditText;

.field private final Ly:Ljava/lang/String;

.field private final Lz:Ljava/lang/String;

.field private final mMode:I

.field private nO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->LA:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x7f08016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lw:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f080170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    .line 62
    const-string v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lw:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lw:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 67
    :cond_0
    const-string v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 72
    const-string v0, "word"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Ly:Ljava/lang/String;

    .line 73
    const-string v0, "shortcut"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lz:Ljava/lang/String;

    .line 74
    const-string v0, "locale"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aj(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 153
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->LA:[Ljava/lang/String;

    const-string v3, "word=? AND locale is null"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 163
    :goto_0
    if-nez v1, :cond_2

    .line 166
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v7

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->LA:[Ljava/lang/String;

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 164
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    .line 166
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v7, v0

    goto :goto_1

    :cond_4
    move v0, v7

    .line 164
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method P(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Ly:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Ly:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lz:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 98
    :cond_0
    return-void
.end method

.method Q(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 102
    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Ly:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Ly:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lz:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/settings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 118
    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 126
    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    invoke-static {v3, v1, v2}, Lcom/android/settings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 134
    invoke-static {v3, v0, v2}, Lcom/android/settings/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 139
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa

    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-static {p1, v2, v3, v0, v1}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/cu;->W(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_2
.end method

.method aj(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public d(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 206
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->a(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 212
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-static {p1, v2, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-static {p1, v2, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    const-string v0, ""

    invoke-static {p1, v2, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 228
    :cond_2
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-object v2
.end method

.method e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const-string v0, "word"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Lx:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->nO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
