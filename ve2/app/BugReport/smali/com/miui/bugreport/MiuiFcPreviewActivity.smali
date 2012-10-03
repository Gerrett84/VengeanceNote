.class public Lcom/miui/bugreport/MiuiFcPreviewActivity;
.super Landroid/app/Activity;
.source "MiuiFcPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private r:Landroid/widget/TextView;

.field private s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->s:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->s:Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lmiui/util/ErrorReportUtils;->postErrorReport(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const v0, 0x7f04002a

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_0
    const v0, 0x7f04002b

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 101
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f060001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->setTitle(I)V

    .line 35
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->setContentView(I)V

    .line 37
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->r:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    const-string v1, "extra_fc_report"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "extra_fc_report"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->s:Lorg/json/JSONObject;

    .line 45
    iget-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->s:Lorg/json/JSONObject;

    const-string v1, "stack_track"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->s:Lorg/json/JSONObject;

    const-string v2, "stack_track"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    .line 84
    :goto_0
    return v0

    .line 74
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->onBackPressed()V

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :sswitch_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 78
    const-string v3, "Styled Text"

    iget-object v4, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 80
    const v0, 0x7f04002c

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 82
    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060003 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 109
    iget-object v0, p0, Lcom/miui/bugreport/MiuiFcPreviewActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 67
    invoke-virtual {p0}, Lcom/miui/bugreport/MiuiFcPreviewActivity;->finish()V

    .line 68
    return-void
.end method
