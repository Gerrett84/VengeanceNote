.class Lcom/android/settings/Y;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# instance fields
.field final synthetic fc:Lcom/android/settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->b(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->c(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->d(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "voltage"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v4, 0x7f0b003d

    invoke-virtual {v3, v4}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->e(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const-string v4, "temperature"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/BatteryInfo;->a(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->f(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "technology"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->g(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-virtual {v2}, Lcom/android/settings/BatteryInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/cu;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    packed-switch v0, :pswitch_data_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    const-string v0, "health"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v1}, Lcom/android/settings/BatteryInfo;->i(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    invoke-static {v0}, Lcom/android/settings/BatteryInfo;->h(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 126
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 128
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 129
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 130
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/settings/Y;->fc:Lcom/android/settings/BatteryInfo;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/android/settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
