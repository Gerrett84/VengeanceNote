.class public Lcom/android/settings/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"


# instance fields
.field private cA:Landroid/widget/SimpleAdapter;

.field private cB:Lcom/android/settings/ad;

.field private cy:Z

.field private cz:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 295
    return-void
.end method

.method public static a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 123
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 126
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 132
    :goto_1
    return v0

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 94
    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "gmt"

    aput-object v1, v4, v0

    .line 95
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 97
    if-eqz p1, :cond_0

    const-string v0, "name"

    .line 98
    :goto_0
    new-instance v1, Lcom/android/settings/av;

    invoke-direct {v1, v0}, Lcom/android/settings/av;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/android/settings/ZonePicker;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 107
    return-object v0

    .line 97
    :cond_0
    const-string v0, "offset"

    goto :goto_0

    .line 95
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 250
    invoke-virtual {v1, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 251
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    if-gez v1, :cond_1

    .line 256
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    const v4, 0x36ee80

    div-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    const v4, 0xea60

    div-int/2addr v2, v4

    .line 265
    rem-int/lit8 v2, v2, 0x3c

    .line 267
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 268
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v2, "gmt"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "offset"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void

    .line 258
    :cond_1
    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    const v0, 0x1090004

    invoke-static {p0, p1, v0}, Lcom/android/settings/ZonePicker;->a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/TimeZone;
    .locals 1
    .parameter

    .prologue
    .line 141
    check-cast p0, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 214
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 216
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 217
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    if-eq v4, v7, :cond_5

    .line 218
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 219
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 241
    :goto_2
    return-object v0

    .line 222
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    .line 236
    const-string v1, "ZonePicker"

    const-string v2, "Ill-formatted timezones.xml file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 224
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "timezone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {v0, v4, v5, v1, v2}, Lcom/android/settings/ZonePicker;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 229
    :cond_3
    :goto_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    if-eq v4, v7, :cond_4

    .line 230
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 237
    :catch_1
    move-exception v1

    .line 238
    const-string v1, "ZonePicker"

    const-string v2, "Unable to read timezones.xml file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 232
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 234
    :cond_5
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 199
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ZonePicker;->cz:Landroid/widget/SimpleAdapter;

    .line 201
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iput-boolean p1, p0, Lcom/android/settings/ZonePicker;->cy:Z

    .line 203
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v0

    .line 204
    if-ltz v0, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/ZonePicker;->setSelection(I)V

    .line 207
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ZonePicker;->cA:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->b(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ZonePicker;->cz:Landroid/widget/SimpleAdapter;

    .line 150
    invoke-static {v0, v2}, Lcom/android/settings/ZonePicker;->b(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ZonePicker;->cA:Landroid/widget/SimpleAdapter;

    .line 153
    invoke-direct {p0, v2}, Lcom/android/settings/ZonePicker;->d(Z)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/settings/ZonePicker;->setHasOptionsMenu(Z)V

    .line 155
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x1

    const v1, 0x7f0b0107

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    const/4 v0, 0x2

    const v1, 0x7f0b0108

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 163
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 164
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 281
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 285
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 286
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/settings/ZonePicker;->cB:Lcom/android/settings/ad;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/ZonePicker;->cB:Lcom/android/settings/ad;

    invoke-interface {v1, v0}, Lcom/android/settings/ad;->a(Ljava/util/TimeZone;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 182
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/ZonePicker;->d(Z)V

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/ZonePicker;->d(Z)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/ZonePicker;->cy:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
