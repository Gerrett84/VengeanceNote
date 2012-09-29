.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeUtil.java"


# static fields
.field private static final nq:Ljava/util/Locale;

.field private static final nr:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final ns:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nq:Ljava/util/Locale;

    .line 53
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    :try_start_0
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 164
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 166
    invoke-virtual {v0, p4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    if-eqz v2, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p0, v5, v0}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v2, 0x1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_1
    aput-object v0, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    return-void
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->c(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v1

    .line 310
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 311
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 314
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 315
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 316
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    if-eqz p3, :cond_1

    .line 318
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 319
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-static {p0, p2, v3, v4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {p0, p2, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V

    .line 326
    return-void
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    const-string v1, "default_input_method"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/content/ContentResolver;)I

    move-result v9

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->c(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v10

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->d(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v11

    .line 189
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v1

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 192
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    .line 193
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_0

    .line 197
    instance-of v5, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    move v5, v2

    .line 200
    :goto_1
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 201
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v16

    .line 202
    if-nez p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v5, :cond_b

    .line 204
    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v10, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_3
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 210
    const/4 v7, 0x0

    .line 211
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    .line 212
    const/4 v6, 0x0

    move v8, v6

    move v6, v7

    move v7, v3

    :goto_2
    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    .line 213
    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v18

    .line 214
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 218
    if-nez v3, :cond_6

    .line 212
    :cond_4
    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v5, v2

    goto :goto_1

    .line 219
    :cond_6
    if-nez v6, :cond_7

    .line 222
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 224
    const/4 v7, 0x1

    .line 225
    const/4 v6, 0x1

    .line 227
    :cond_7
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 228
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    if-eqz v15, :cond_4

    .line 230
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne v9, v3, :cond_4

    .line 233
    const/4 v7, 0x0

    goto :goto_3

    .line 237
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move v1, v7

    move-object v2, v4

    .line 255
    :goto_4
    if-eqz v16, :cond_a

    if-eqz p3, :cond_a

    .line 256
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 257
    if-eqz v5, :cond_a

    .line 258
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    move v3, v1

    move-object v4, v2

    .line 266
    goto/16 :goto_0

    .line 241
    :cond_b
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    if-eqz v15, :cond_12

    .line 250
    const/4 v4, 0x0

    move v1, v3

    move-object v2, v4

    goto :goto_4

    .line 261
    :cond_c
    if-nez v5, :cond_a

    .line 262
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 268
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-static {v1, v10}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-static {v2, v11}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V

    .line 284
    if-nez v3, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->b(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 288
    :cond_e
    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/content/ContentResolver;I)V

    .line 291
    :cond_f
    const-string v3, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 294
    const-string v1, "disabled_system_input_methods"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    :cond_10
    const-string v1, "default_input_method"

    if-eqz v4, :cond_11

    :goto_6
    move-object/from16 v0, p1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    return-void

    .line 299
    :cond_11
    const-string v4, ""

    goto :goto_6

    :cond_12
    move v1, v3

    move-object v2, v4

    goto :goto_4
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 332
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    .line 334
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    .line 335
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 338
    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v1, p3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 334
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 344
    :cond_2
    return-void
.end method

.method public static a(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 351
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 352
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    :cond_1
    return-void

    .line 353
    :cond_2
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 354
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 355
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_0

    .line 356
    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 364
    if-eqz v2, :cond_3

    .line 365
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 78
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V

    move v1, v2

    goto :goto_0

    .line 76
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 80
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v1, :cond_0

    .line 87
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 401
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v0, 0x1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 407
    :catch_0
    move-exception v1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    if-gt p2, v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 385
    goto :goto_0

    .line 387
    :cond_2
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->b(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 388
    goto :goto_0

    .line 390
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nq:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    move v1, v0

    .line 415
    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    const/4 v0, 0x1

    .line 420
    :cond_0
    return v0

    .line 415
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->a(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 4
    .parameter

    .prologue
    .line 115
    const-string v0, "enabled_input_methods"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    return-object v0

    .line 126
    :cond_1
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 127
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_1
    sget-object v3, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    sget-object v3, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->ns:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static d(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 3
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    const-string v1, "disabled_system_input_methods"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    return-object v0

    .line 150
    :cond_1
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 151
    :goto_0
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->nr:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
