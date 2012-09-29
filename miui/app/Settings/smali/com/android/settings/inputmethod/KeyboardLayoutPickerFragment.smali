.class public Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private jM:Ljava/lang/String;

.field private jN:I

.field private jO:Landroid/hardware/input/InputManager;

.field private jP:[Landroid/hardware/input/KeyboardLayout;

.field private jQ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jQ:Ljava/util/HashMap;

    return-void
.end method

.method private aj()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jP:[Landroid/hardware/input/KeyboardLayout;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 135
    new-instance v6, Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    iget-object v7, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jQ:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-object v1
.end method

.method private bX()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jQ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_0
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    .line 62
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jP:[Landroid/hardware/input/KeyboardLayout;

    .line 63
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jP:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->aj()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 65
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    if-ne p1, v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->bX()V

    .line 121
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    if-ne p1, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 95
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jQ:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayout;

    .line 97
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    const/4 v0, 0x1

    .line 109
    :goto_1
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jO:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->jN:I

    .line 80
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->bX()V

    goto :goto_0
.end method
