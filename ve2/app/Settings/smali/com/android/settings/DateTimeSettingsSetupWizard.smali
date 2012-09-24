.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Cd:Z

.field private Ce:Landroid/widget/CompoundButton;

.field private Cf:Landroid/widget/Button;

.field private Cg:Landroid/widget/ListPopupWindow;

.field private Ch:Landroid/widget/SimpleAdapter;

.field private Ci:Ljava/util/TimeZone;

.field private Cj:Landroid/widget/TimePicker;

.field private Ck:Landroid/widget/DatePicker;

.field private Cl:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 327
    new-instance v0, Lcom/android/settings/aj;

    invoke-direct {v0, p0}, Lcom/android/settings/aj;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->hr()V

    return-void
.end method

.method private aA(I)V
    .locals 3
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find zone picker anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    .line 289
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ch:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private hq()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 301
    :goto_0
    return v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hr()V
    .locals 5

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cd:Z

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public hp()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ci:Ljava/util/TimeZone;

    .line 122
    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    .line 135
    :goto_0
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    .line 136
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    .line 140
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    if-nez v1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 141
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    .line 142
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    invoke-virtual {v0, v3}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 145
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cl:Landroid/view/inputmethod/InputMethodManager;

    .line 147
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->hq()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 140
    goto :goto_1

    :cond_3
    move v2, v3

    .line 142
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    .line 222
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    if-nez p2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cl:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 236
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 223
    goto :goto_0

    :cond_3
    move v0, v2

    .line 226
    goto :goto_1

    :cond_4
    move v1, v2

    .line 227
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 174
    :sswitch_0
    const v0, 0x7f08005f

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->aA(I)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ci:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ci:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v1, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 184
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ci:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ce:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->a(III)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 199
    :cond_1
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x7f080007 -> :sswitch_2
        0x7f080009 -> :sswitch_1
        0x7f08005f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v2, 0x7f04002c

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 89
    const v2, 0x7f08005f

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cd:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cd:Z

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->hp()V

    .line 95
    :goto_1
    const v0, 0x7f04002d

    invoke-static {p0, v1, v0}, Lcom/android/settings/ZonePicker;->a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ch:Landroid/widget/SimpleAdapter;

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cd:Z

    if-nez v0, :cond_0

    .line 104
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 89
    goto :goto_0

    .line 93
    :cond_2
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ZonePicker;->c(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v1

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cd:Z

    if-eqz v0, :cond_1

    .line 242
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ci:Ljava/util/TimeZone;

    .line 243
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cf:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Ck:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cj:Landroid/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->Cg:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 262
    return-void

    .line 255
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 256
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DateTimeSettings;

    .line 259
    invoke-virtual {v0, p0}, Lcom/android/settings/DateTimeSettings;->m(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    const v0, 0x7f08005c

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->aA(I)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    return-void
.end method
