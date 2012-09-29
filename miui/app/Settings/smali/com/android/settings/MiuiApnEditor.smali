.class public Lcom/android/settings/MiuiApnEditor;
.super Lcom/android/settings/ApnEditor;
.source "MiuiApnEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;-><init>()V

    return-void
.end method

.method private ak()Z
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/MiuiApnEditor;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 46
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b06f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b06f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/aF;

    invoke-direct {v2, p0}, Lcom/android/settings/aF;-><init>(Lcom/android/settings/MiuiApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/aH;

    invoke-direct {v2, p0}, Lcom/android/settings/aH;-><init>(Lcom/android/settings/MiuiApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/ApnEditor;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/settings/MiuiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    const v0, 0x7f0b06f6

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiApnEditor;->setTitle(I)V

    .line 23
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->L:Z

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->K:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->J:Ljava/lang/String;

    .line 27
    :cond_1
    return-void

    .line 19
    :cond_2
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const v0, 0x7f0b02ff

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiApnEditor;->setTitle(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/settings/ApnEditor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 33
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/MiuiApnEditor;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/MiuiApnEditor;->finish()V

    .line 36
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/ApnEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/MiuiApnEditor;->ak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/MiuiApnEditor;->finish()V

    .line 74
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
