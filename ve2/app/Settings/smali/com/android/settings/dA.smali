.class Lcom/android/settings/dA;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private Ji:Landroid/widget/AlphabetIndexer;

.field private Jj:Lcom/android/settings/UserDictionarySettings;

.field private Jk:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings/UserDictionarySettings;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 321
    new-instance v0, Lcom/android/settings/ak;

    invoke-direct {v0, p0}, Lcom/android/settings/ak;-><init>(Lcom/android/settings/dA;)V

    iput-object v0, p0, Lcom/android/settings/dA;->Jk:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 339
    iput-object p6, p0, Lcom/android/settings/dA;->Jj:Lcom/android/settings/UserDictionarySettings;

    .line 340
    if-eqz p3, :cond_0

    .line 341
    const v0, 0x60c0196

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    const-string v1, "word"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 344
    new-instance v2, Landroid/widget/AlphabetIndexer;

    invoke-direct {v2, p3, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dA;->Jk:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v0}, Lcom/android/settings/dA;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 347
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dA;->Ji:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/settings/dA;->Jj:Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/UserDictionarySettings;->b(Lcom/android/settings/UserDictionarySettings;Ljava/lang/String;)V

    .line 363
    return-void
.end method
