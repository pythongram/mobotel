.class public Lnet/hockeyapp/android/utils/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# static fields
.field public static final VERSION_MAX:Ljava/lang/String; = "99.0"


# instance fields
.field private mCurrentVersionCode:I

.field private mListener:Lnet/hockeyapp/android/UpdateInfoListener;

.field private mNewest:Lorg/json/JSONObject;

.field private mSortedVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoJSON"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateInfoListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    .line 42
    invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->loadVersions(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->sortVersions()V

    .line 44
    return-void
.end method

.method public static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 241
    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v5, v7

    .line 277
    :cond_8
    :goto_8
    return v5

    .line 247
    :cond_9
    :try_start_9
    new-instance v1, Ljava/util/Scanner;

    const-string v8, "\\-.*"

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "leftScanner":Ljava/util/Scanner;
    new-instance v3, Ljava/util/Scanner;

    const-string v8, "\\-.*"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, "rightScanner":Ljava/util/Scanner;
    const-string v8, "\\."

    invoke-virtual {v1, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 250
    const-string v8, "\\."

    invoke-virtual {v3, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 253
    :cond_2d
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 254
    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    .line 255
    .local v2, "leftValue":I
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    .line 256
    .local v4, "rightValue":I
    if-lt v2, v4, :cond_8

    .line 258
    if-le v2, v4, :cond_2d

    move v5, v6

    .line 259
    goto :goto_8

    .line 264
    .end local v2    # "leftValue":I
    .end local v4    # "rightValue":I
    :cond_47
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_4f

    move v5, v6

    .line 265
    goto :goto_8

    .line 268
    :cond_4f
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextInt()Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_52} :catch_57

    move-result v6

    if-nez v6, :cond_8

    move v5, v7

    .line 273
    goto :goto_8

    .line 275
    .end local v1    # "leftScanner":Ljava/util/Scanner;
    .end local v3    # "rightScanner":Ljava/util/Scanner;
    :catch_57
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v5, v7

    .line 277
    goto :goto_8
.end method

.method private static failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide p2

    .line 121
    .end local p2    # "defaultValue":J
    :goto_4
    return-wide p2

    .line 120
    .restart local p2    # "defaultValue":J
    :catch_5
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method

.method private static failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 113
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_4
    return-object p2

    .line 112
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_4
.end method

.method private getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "versionID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\'restore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  style=\'background: #c8c8c8; color: #000; display: block; float: right; padding: 7px; margin: 0px 10px 10px; text-decoration: none;\'>Restore</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSeparator()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 150
    const-string v0, "<hr style=\'border-top: 1px solid #c8c8c8; border-bottom: 0px; margin: 40px 10px 0px 10px;\' />"

    return-object v0
.end method

.method private getVersionCode(Lorg/json/JSONObject;)I
    .registers 4
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "versionCode":I
    :try_start_1
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 201
    :goto_7
    return v0

    .line 199
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method private getVersionID(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    const-string v0, ""

    .line 167
    .local v0, "versionID":Ljava/lang/String;
    :try_start_2
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    .line 170
    :goto_8
    return-object v0

    .line 168
    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method private getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 9
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v0

    .line 177
    .local v0, "newestCode":I
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionCode(Lorg/json/JSONObject;)I

    move-result v2

    .line 178
    .local v2, "versionCode":I
    invoke-direct {p0, p2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "versionName":Ljava/lang/String;
    const-string v4, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-nez p1, :cond_29

    .line 182
    const-string v4, "Newest version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1f
    :goto_1f
    const-string v4, "</strong></div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 184
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    if-eq v2, v0, :cond_1f

    iget v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    if-ne v2, v4, :cond_1f

    .line 186
    const/4 v4, -0x1

    iput v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    .line 187
    const-string v4, "[INSTALLED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f
.end method

.method private getVersionName(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .param p1, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 205
    const-string v0, ""

    .line 207
    .local v0, "versionName":Ljava/lang/String;
    :try_start_2
    const-string v1, "shortversion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    .line 210
    :goto_8
    return-object v0

    .line 208
    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method private getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "notes"

    const-string v3, ""

    invoke-static {p2, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "notes":Ljava/lang/String;
    const-string v2, "<div style=\'padding: 0px 10px;\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    .line 219
    const-string v2, "<em>No information.</em>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_21
    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 221
    :cond_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method public static isNewerThanLastUpdateTime(Landroid/content/Context;J)Z
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 290
    if-nez p0, :cond_4

    .line 306
    :cond_3
    :goto_3
    return v6

    .line 295
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 296
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 297
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 301
    .local v0, "appFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1f} :catch_29

    const-wide/16 v10, 0x708

    add-long v4, v8, v10

    .line 303
    .local v4, "lastModified":J
    cmp-long v7, p1, v4

    if-lez v7, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    .line 304
    .end local v0    # "appFile":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "lastModified":J
    :catch_29
    move-exception v2

    .line 305
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method private loadVersions(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoJSON"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 47
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    .line 49
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v8

    iput v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mCurrentVersionCode:I

    .line 52
    :try_start_18
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, "versions":Lorg/json/JSONArray;
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mListener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v8}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v4

    .line 55
    .local v4, "versionCode":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_24
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_65

    .line 56
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_60

    move v2, v6

    .line 58
    .local v2, "largerVersionCode":Z
    :goto_37
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_62

    const-string v8, "timestamp"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lnet/hockeyapp/android/utils/VersionHelper;->isNewerThanLastUpdateTime(Landroid/content/Context;J)Z

    move-result v8

    if-eqz v8, :cond_62

    move v3, v6

    .line 60
    .local v3, "newerApkFile":Z
    :goto_4c
    if-nez v2, :cond_50

    if-eqz v3, :cond_58

    .line 61
    :cond_50
    iput-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    .line 62
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 64
    :cond_58
    iget-object v8, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_5d} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_5d} :catch_64

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .end local v2    # "largerVersionCode":Z
    .end local v3    # "newerApkFile":Z
    :cond_60
    move v2, v7

    .line 57
    goto :goto_37

    .restart local v2    # "largerVersionCode":Z
    :cond_62
    move v3, v7

    .line 58
    goto :goto_4c

    .line 67
    .end local v0    # "entry":Lorg/json/JSONObject;
    .end local v1    # "index":I
    .end local v2    # "largerVersionCode":Z
    .end local v4    # "versionCode":I
    .end local v5    # "versions":Lorg/json/JSONArray;
    :catch_64
    move-exception v6

    .line 69
    :cond_65
    :goto_65
    return-void

    .line 66
    :catch_66
    move-exception v6

    goto :goto_65
.end method

.method public static mapGoogleVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p0, :cond_a

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 321
    :cond_a
    const-string p0, "5.0"

    .line 329
    .end local p0    # "version":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object p0

    .line 322
    .restart local p0    # "version":Ljava/lang/String;
    :cond_d
    const-string v0, "M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 323
    const-string p0, "6.0"

    goto :goto_c

    .line 324
    :cond_18
    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 325
    const-string p0, "7.0"

    goto :goto_c

    .line 326
    :cond_23
    const-string v0, "^[a-zA-Z]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 327
    const-string p0, "99.0"

    goto :goto_c
.end method

.method private sortVersions()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/utils/VersionHelper$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/utils/VersionHelper$1;-><init>(Lnet/hockeyapp/android/utils/VersionHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getFileDateString()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v4, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v5, "timestamp"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    .line 94
    .local v2, "timestamp":J
    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 95
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getFileSizeBytes()J
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 100
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v4, "external"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 101
    .local v2, "external":Z
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v4, "appsize"

    invoke-static {v3, v4, v6, v7}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    .line 106
    .local v0, "appSize":J
    if-eqz v2, :cond_24

    cmp-long v3, v0, v6

    if-nez v3, :cond_24

    const-wide/16 v0, -0x1

    .end local v0    # "appSize":J
    :cond_24
    return-wide v0
.end method

.method public getReleaseNotes(Z)Ljava/lang/String;
    .registers 7
    .param p1, "showRestore"    # Z

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v3, "<html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, "<body style=\'padding: 0px 0px 20px 0px\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "count":I
    iget-object v3, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mSortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 132
    .local v2, "version":Lorg/json/JSONObject;
    if-lez v0, :cond_34

    .line 133
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/VersionHelper;->getSeparator()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p1, :cond_34

    .line 135
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getRestoreButton(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_34
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionLine(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0, v0, v2}, Lnet/hockeyapp/android/utils/VersionHelper;->getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 141
    goto :goto_16

    .line 143
    .end local v2    # "version":Lorg/json/JSONObject;
    :cond_45
    const-string v3, "</body>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v3, "</html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getVersionString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/utils/VersionHelper;->mNewest:Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/utils/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
