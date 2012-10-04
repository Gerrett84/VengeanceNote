.class public Lcom/miui/bugreport/BugReportActivity;
.super Landroid/app/Activity;
.source "BugReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private b:Lcom/miui/bugreport/UserFeedbackReport;

.field private e:Lcom/miui/bugreport/b;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Ljava/io/File;

.field private n:Ljava/io/File;

.field private o:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/bugreport/BugReportActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/bugreport/BugReportActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->f:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->g:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    .line 119
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->h:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    .line 123
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->i:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    .line 127
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    return-void
.end method

.method static synthetic f(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/b;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->e:Lcom/miui/bugreport/b;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/miui/bugreport/g;

    invoke-direct {v0, p0}, Lcom/miui/bugreport/g;-><init>(Lcom/miui/bugreport/BugReportActivity;)V

    invoke-static {v0}, Lcom/miui/bugreport/d;->a(Ljava/lang/Runnable;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 182
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    if-nez v0, :cond_0

    .line 184
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Pictures/Screenshots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "png"

    aput-object v4, v2, v3

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    const-string v1, "ext_filter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "ext_file_first"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/bugreport/BugReportActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iput-object v6, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    .line 197
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v6, v0, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/miui/bugreport/f;

    invoke-direct {v0, p0}, Lcom/miui/bugreport/f;-><init>(Lcom/miui/bugreport/BugReportActivity;)V

    const v1, 0x7f04000f

    invoke-virtual {p0, v1}, Lcom/miui/bugreport/BugReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/miui/bugreport/d;->a(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->bugreport:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 254
    :pswitch_0
    if-ne p2, v1, :cond_3

    .line 255
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    iput-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    goto :goto_0

    .line 260
    :cond_2
    iput-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    goto :goto_1

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iput-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    .line 267
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v3, v0, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    goto :goto_0

    .line 271
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/miui/bugreport/BugReportActivity;->finish()V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2

    .line 139
    if-eqz p2, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/miui/bugreport/BugReportActivity;->f()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_4

    .line 145
    if-eqz p2, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/miui/bugreport/BugReportActivity;->g()V

    goto :goto_0

    .line 148
    :cond_3
    iput-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    .line 149
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    goto :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 152
    if-eqz p2, :cond_5

    .line 153
    invoke-direct {p0}, Lcom/miui/bugreport/BugReportActivity;->h()V

    goto :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->bugreport:Ljava/io/File;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->g:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->h:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_4

    .line 244
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->k:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->i:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/miui/bugreport/BugReportActivity;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/miui/bugreport/UserFeedbackReport;

    invoke-direct {v0}, Lcom/miui/bugreport/UserFeedbackReport;-><init>()V

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    .line 57
    new-instance v0, Lcom/miui/bugreport/b;

    invoke-direct {v0}, Lcom/miui/bugreport/b;-><init>()V

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->e:Lcom/miui/bugreport/b;

    .line 58
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->e:Lcom/miui/bugreport/b;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v0, p0, v1}, Lcom/miui/bugreport/b;->c(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)V

    .line 60
    invoke-direct {p0}, Lcom/miui/bugreport/BugReportActivity;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/miui/bugreport/BugReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/bugreport/UserFeedbackReport;->subject:Ljava/lang/String;

    .line 66
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v1, v1, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/bugreport/BugReportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 75
    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 76
    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 78
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/miui/bugreport/BugReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 281
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 318
    :goto_0
    return v0

    .line 289
    :pswitch_0
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v2, v2, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const v2, 0x7f040028

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v2, v2, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 294
    const v2, 0x7f040029

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Lcom/miui/bugreport/h;

    invoke-direct {v1, p0}, Lcom/miui/bugreport/h;-><init>(Lcom/miui/bugreport/BugReportActivity;)V

    invoke-virtual {p0}, Lcom/miui/bugreport/BugReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/bugreport/d;->a(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    iget-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/bugreport/PreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v2, "user_feedback_report"

    iget-object v3, p0, Lcom/miui/bugreport/BugReportActivity;->b:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 315
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/miui/bugreport/BugReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x7f060010
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "saved_system_log"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/io/File;

    const-string v1, "saved_system_log"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    .line 101
    :goto_0
    const-string v0, "saved_screen_shot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "saved_screen_shot"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    .line 106
    :goto_1
    const-string v0, "saved_bug_report"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/io/File;

    const-string v1, "saved_bug_report"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    .line 111
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 112
    return-void

    .line 99
    :cond_0
    iput-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    goto :goto_0

    .line 104
    :cond_1
    iput-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    goto :goto_1

    .line 109
    :cond_2
    iput-object v2, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/miui/bugreport/BugReportActivity;->f()V

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "saved_system_log"

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "saved_screen_shot"

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "saved_bug_report"

    iget-object v1, p0, Lcom/miui/bugreport/BugReportActivity;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    return-void
.end method
