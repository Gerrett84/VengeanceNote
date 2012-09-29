.class Lcom/android/settings/a/d;
.super Landroid/preference/CheckBoxPreference;
.source "DataUsageMeteredSettings.java"


# instance fields
.field private final hl:Landroid/net/NetworkTemplate;

.field private hv:Z

.field final synthetic uJ:Lcom/android/settings/a/f;


# direct methods
.method public constructor <init>(Lcom/android/settings/a/f;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/settings/a/d;->uJ:Lcom/android/settings/a/f;

    .line 116
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object p3, p0, Lcom/android/settings/a/d;->hl:Landroid/net/NetworkTemplate;

    .line 119
    invoke-virtual {p0, v5}, Lcom/android/settings/a/d;->setPersistent(Z)V

    .line 121
    iput-boolean v6, p0, Lcom/android/settings/a/d;->hv:Z

    .line 122
    invoke-static {p1}, Lcom/android/settings/a/f;->a(Lcom/android/settings/a/f;)Lcom/android/settings/a/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/a/i;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0, v6}, Lcom/android/settings/a/d;->setChecked(Z)V

    .line 126
    invoke-virtual {p0, v5}, Lcom/android/settings/a/d;->setEnabled(Z)V

    .line 133
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/a/d;->hv:Z

    .line 134
    return-void

    .line 128
    :cond_0
    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/a/d;->setChecked(Z)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/a/d;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/a/d;->hv:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/a/d;->uJ:Lcom/android/settings/a/f;

    invoke-static {v0}, Lcom/android/settings/a/f;->a(Lcom/android/settings/a/f;)Lcom/android/settings/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/a/d;->hl:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/a/d;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/a/i;->a(Landroid/net/NetworkTemplate;Z)V

    .line 142
    :cond_0
    return-void
.end method
