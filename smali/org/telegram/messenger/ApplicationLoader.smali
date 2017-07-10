.class public Lorg/telegram/messenger/ApplicationLoader;
.super Landroid/support/multidex/MultiDexApplication;
.source "ApplicationLoader.java"


# static fields
.field public static KEEP_ORIGINAL_FILENAME:Z

.field public static SHOW_ANDROID_EMOJI:Z

.field public static USE_DEVICE_FONT:Z

.field public static volatile applicationContext:Landroid/content/Context;

.field public static volatile applicationHandler:Landroid/os/Handler;

.field private static volatile applicationInited:Z

.field private static cachedWallpaper:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

.field public static i:I

.field private static isCustomTheme:Z

.field public static volatile isScreenOn:Z

.field public static lockDatabaseHandler:Lorg/telegram/SQLite/LockDatabaseHandler;

.field private static mInstaceApplication:Lorg/telegram/messenger/ApplicationLoader;

.field public static volatile mainInterfacePaused:Z

.field public static volatile mainInterfacePausedStageQueue:Z

.field public static volatile mainInterfacePausedStageQueueTime:J

.field private static selectedColor:I

.field private static serviceMessageColor:I

.field private static serviceSelectedMessageColor:I

.field private static final sync:Ljava/lang/Object;

.field public static trans:Ljava/lang/String;


# instance fields
.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    .line 70
    sput v1, Lorg/telegram/messenger/ApplicationLoader;->i:I

    .line 78
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 79
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 80
    const-string v0, "0"

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->trans:Ljava/lang/String;

    .line 81
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    .line 89
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return p0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    return p0
.end method

.method static synthetic access$300()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z

    return p0
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 67
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ApplicationLoader;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ApplicationLoader;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;->checkPlayServices()Z

    move-result v0

    return v0
.end method

.method private static calcBackgroundColor()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 117
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v1

    .line 118
    .local v1, "result":[I
    aget v2, v1, v4

    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    .line 119
    const/4 v2, 0x1

    aget v2, v1, v2

    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    .line 120
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serviceMessageColor"

    sget v4, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serviceSelectedMessageColor"

    sget v4, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method private checkPlayServices()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 699
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_a

    move-result v1

    .line 700
    .local v1, "resultCode":I
    if-nez v1, :cond_8

    .line 704
    .end local v1    # "resultCode":I
    :goto_7
    return v2

    .line 700
    .restart local v1    # "resultCode":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 701
    .end local v1    # "resultCode":I
    :catch_a
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private static convertConfig()V
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 192
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "dataconfig"

    invoke-virtual {v9, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 193
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "currentDatacenterId"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 194
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    const v9, 0x8000

    invoke-direct {v0, v9}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 195
    .local v0, "buffer":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 196
    const-string v9, "datacenterSetId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b3

    move v9, v10

    :goto_27
    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 197
    invoke-virtual {v0, v10}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 198
    const-string v9, "currentDatacenterId"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 199
    const-string v9, "timeDifference"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 200
    const-string v9, "lastDcUpdateTime"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 201
    const-string v9, "pushSessionId"

    const-wide/16 v12, 0x0

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 202
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    .line 203
    invoke-virtual {v0, v11}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 205
    :try_start_59
    const-string v9, "datacenters"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "datacentersString":Ljava/lang/String;
    if-eqz v4, :cond_80

    .line 207
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 208
    .local v3, "datacentersBytes":[B
    if-eqz v3, :cond_80

    .line 209
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 210
    .local v2, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 211
    const/4 v9, 0x4

    array-length v10, v3

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v0, v3, v9, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    .line 212
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_80} :catch_b6

    .line 220
    .end local v2    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v3    # "datacentersBytes":[B
    .end local v4    # "datacentersString":Ljava/lang/String;
    :cond_80
    :goto_80
    :try_start_80
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v9

    const-string v10, "tgnet.dat"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v9, "rws"

    invoke-direct {v7, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v7, "fileOutputStream":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v1

    .line 223
    .local v1, "bytes":[B
    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 224
    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 225
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a4} :catch_bb

    .line 229
    .end local v1    # "bytes":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileOutputStream":Ljava/io/RandomAccessFile;
    :goto_a4
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 230
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    .end local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_b2
    return-void

    .restart local v0    # "buffer":Lorg/telegram/tgnet/SerializedData;
    :cond_b3
    move v9, v11

    .line 196
    goto/16 :goto_27

    .line 215
    :catch_b6
    move-exception v5

    .line 216
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_bb
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a4
.end method

.method public static getCachedWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 186
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    monitor-exit v1

    return-object v0

    .line 188
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getFilesDirFixed()Ljava/io/File;
    .registers 6

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v4, 0xa

    if-ge v0, v4, :cond_11

    .line 236
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 237
    .local v3, "path":Ljava/io/File;
    if-eqz v3, :cond_e

    .line 249
    .end local v3    # "path":Ljava/io/File;
    :goto_d
    return-object v3

    .line 235
    .restart local v3    # "path":Ljava/io/File;
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v3    # "path":Ljava/io/File;
    :cond_11
    :try_start_11
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 243
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v5, "files"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .restart local v3    # "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_d

    .line 246
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "path":Ljava/io/File;
    :catch_24
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 249
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.ongram/files"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static declared-synchronized getInstance()Lorg/telegram/messenger/ApplicationLoader;
    .registers 2

    .prologue
    .line 102
    const-class v1, Lorg/telegram/messenger/ApplicationLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mInstaceApplication:Lorg/telegram/messenger/ApplicationLoader;

    if-nez v0, :cond_e

    .line 103
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader;

    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->mInstaceApplication:Lorg/telegram/messenger/ApplicationLoader;

    .line 106
    :cond_e
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mInstaceApplication:Lorg/telegram/messenger/ApplicationLoader;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSelectedColor()I
    .registers 1

    .prologue
    .line 98
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->selectedColor:I

    return v0
.end method

.method public static getServiceMessageColor()I
    .registers 1

    .prologue
    .line 125
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    return v0
.end method

.method public static getServiceSelectedMessageColor()I
    .registers 1

    .prologue
    .line 129
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I

    return v0
.end method

.method private initPlayServices()V
    .registers 5

    .prologue
    .line 647
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ApplicationLoader$4;-><init>(Lorg/telegram/messenger/ApplicationLoader;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 668
    return-void
.end method

.method public static isCustomTheme()Z
    .registers 1

    .prologue
    .line 94
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z

    return v0
.end method

.method public static loadWallpaper()V
    .registers 2

    .prologue
    .line 133
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 183
    :goto_4
    return-void

    .line 136
    :cond_5
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ApplicationLoader$1;

    invoke-direct {v1}, Lorg/telegram/messenger/ApplicationLoader$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public static postInitApplication()V
    .registers 20

    .prologue
    .line 253
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    if-eqz v1, :cond_5

    .line 333
    .local v5, "deviceModel":Ljava/lang/String;
    .local v6, "systemVersion":Ljava/lang/String;
    .local v7, "appVersion":Ljava/lang/String;
    .local v8, "langCode":Ljava/lang/String;
    .local v9, "configPath":Ljava/lang/String;
    .local v12, "enablePushConnection":Z
    .local v13, "app":Lorg/telegram/messenger/ApplicationLoader;
    .local v14, "e":Ljava/lang/Exception;
    .local v19, "preferences":Landroid/content/SharedPreferences;
    :goto_4
    return-void

    .line 257
    .end local v5    # "deviceModel":Ljava/lang/String;
    .end local v6    # "systemVersion":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "langCode":Ljava/lang/String;
    .end local v9    # "configPath":Ljava/lang/String;
    .end local v12    # "enablePushConnection":Z
    .end local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    .line 258
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->convertConfig()V

    .line 261
    :try_start_b
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_15d

    .line 267
    .restart local v14    # "e":Ljava/lang/Exception;
    :goto_e
    :try_start_e
    new-instance v15, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v15, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    new-instance v16, Lorg/telegram/messenger/ScreenReceiver;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/messenger/ScreenReceiver;-><init>()V

    .line 270
    .local v16, "mReceiver":Landroid/content/BroadcastReceiver;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_163

    .line 276
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "mReceiver":Landroid/content/BroadcastReceiver;
    :goto_26
    :try_start_26
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 277
    .local v18, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4e} :catch_169

    .line 283
    .end local v18    # "pm":Landroid/os/PowerManager;
    :goto_4e
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    .line 288
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 291
    .restart local v9    # "configPath":Ljava/lang/String;
    :try_start_59
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getLocaleStringIso639()Ljava/lang/String;

    move-result-object v8

    .line 292
    .restart local v8    # "langCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .restart local v5    # "deviceModel":Ljava/lang/String;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 294
    .local v17, "pInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7    # "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_bc} :catch_16f

    move-result-object v6

    .line 302
    .end local v17    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "systemVersion":Ljava/lang/String;
    :goto_bd
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c9

    .line 303
    const-string v8, "fa"

    .line 305
    :cond_c9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d5

    .line 306
    const-string v5, "Android unknown"

    .line 308
    :cond_d5
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e1

    .line 309
    const-string v7, "App version unknown"

    .line 311
    :cond_e1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_ed

    .line 312
    const-string v6, "SDK Unknown"

    .line 315
    :cond_ed
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 316
    .restart local v19    # "preferences":Landroid/content/SharedPreferences;
    const-string v1, "pushConnection"

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 318
    .restart local v12    # "enablePushConnection":Z
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    .line 319
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const/16 v3, 0x41

    sget v4, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getNetworkLogPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v11

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/tgnet/ConnectionsManager;->init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 320
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 321
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 322
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyCountryPortNumber(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 324
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 327
    :cond_145
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    check-cast v13, Lorg/telegram/messenger/ApplicationLoader;

    .line 328
    .restart local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    invoke-direct {v13}, Lorg/telegram/messenger/ApplicationLoader;->initPlayServices()V

    .line 329
    const-string v1, "app initied"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 332
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    goto/16 :goto_4

    .line 262
    .end local v5    # "deviceModel":Ljava/lang/String;
    .end local v6    # "systemVersion":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "langCode":Ljava/lang/String;
    .end local v9    # "configPath":Ljava/lang/String;
    .end local v12    # "enablePushConnection":Z
    .end local v13    # "app":Lorg/telegram/messenger/ApplicationLoader;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    :catch_15d
    move-exception v14

    .line 263
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 271
    :catch_163
    move-exception v14

    .line 272
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_26

    .line 279
    :catch_169
    move-exception v14

    .line 280
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 296
    .restart local v9    # "configPath":Ljava/lang/String;
    :catch_16f
    move-exception v14

    .line 297
    const-string v8, "fa"

    .line 298
    .restart local v8    # "langCode":Ljava/lang/String;
    const-string v5, "Android unknown"

    .line 299
    .restart local v5    # "deviceModel":Ljava/lang/String;
    const-string v7, "App version unknown"

    .line 300
    .restart local v7    # "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "systemVersion":Ljava/lang/String;
    goto/16 :goto_bd
.end method

.method public static reloadWallpaper()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;

    .line 111
    sput v2, Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I

    .line 112
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serviceMessageColor"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V

    .line 114
    return-void
.end method

.method private setupUncaughtException()V
    .registers 5

    .prologue
    .line 354
    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 355
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    .line 356
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 359
    .local v1, "uncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v2, v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v2, :cond_1f

    move-object v0, v1

    .line 360
    check-cast v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 361
    .local v0, "exceptionReporter":Lcom/google/android/gms/analytics/ExceptionReporter;
    new-instance v2, Lorg/telegram/ui/Membergram/analytics/AnalyticsExceptionParser;

    invoke-direct {v2}, Lorg/telegram/ui/Membergram/analytics/AnalyticsExceptionParser;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/ExceptionReporter;->setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V

    .line 363
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 368
    .end local v0    # "exceptionReporter":Lcom/google/android/gms/analytics/ExceptionReporter;
    :cond_1f
    return-void
.end method

.method public static startPushService()V
    .registers 5

    .prologue
    .line 336
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "pushService"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 339
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    :goto_20
    return-void

    .line 341
    :cond_21
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->stopPushService()V

    goto :goto_20
.end method

.method public static stopPushService()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 346
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 348
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 349
    .local v1, "pintent":Landroid/app/PendingIntent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 350
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 351
    return-void
.end method


# virtual methods
.method public declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .registers 3

    .prologue
    .line 371
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v1, :cond_11

    .line 372
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 375
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const-string v1, "UA-85194217-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/ApplicationLoader;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 377
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoader;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 371
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public initImageLoader()V
    .registers 4

    .prologue
    .line 400
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 402
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 403
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 404
    const/high16 v1, 0x3200000

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 405
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 407
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 408
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 639
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController;->onDeviceConfigurationChange(Landroid/content/res/Configuration;)V

    .line 640
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 644
    :goto_f
    return-void

    .line 641
    :catch_10
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 415
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;->setupUncaughtException()V

    .line 416
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->mInstaceApplication:Lorg/telegram/messenger/ApplicationLoader;

    .line 417
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1e

    .line 418
    const-string v4, "java.net.preferIPv4Stack"

    const-string v5, "true"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    const-string v4, "java.net.preferIPv6Addresses"

    const-string v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    :cond_1e
    invoke-static {p0, v2}, Lco/ronash/pushe/Pushe;->initialize(Landroid/content/Context;Z)V

    .line 423
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 424
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 426
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/ApplicationLoader$2;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/ApplicationLoader$2;-><init>(Lorg/telegram/messenger/ApplicationLoader;)V

    invoke-virtual {v4, v5}, Lcom/onesignal/OneSignal$Builder;->setNotificationReceivedHandler(Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v4

    .line 608
    invoke-virtual {v4}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 610
    new-instance v4, Lorg/telegram/messenger/ApplicationLoader$3;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ApplicationLoader$3;-><init>(Lorg/telegram/messenger/ApplicationLoader;)V

    invoke-static {v4}, Lcom/onesignal/OneSignal;->idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V

    .line 618
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoader;->initImageLoader()V

    .line 619
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 620
    invoke-static {}, Lde/jurihock/voicesmith/Utils;->loadNativeLibrary()V

    .line 621
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-eq v4, v5, :cond_5e

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_a9

    :cond_5e
    :goto_5e
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->native_setJava(Z)V

    .line 622
    new-instance v2, Lorg/telegram/ui/Components/ForegroundDetector;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ForegroundDetector;-><init>(Landroid/app/Application;)V

    .line 624
    new-instance v2, Landroid/os/Handler;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    .line 625
    new-instance v2, Lorg/telegram/SQLite/DatabaseHandler;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/SQLite/DatabaseHandler;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    .line 626
    new-instance v2, Lorg/telegram/SQLite/LockDatabaseHandler;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/SQLite/LockDatabaseHandler;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/telegram/messenger/ApplicationLoader;->lockDatabaseHandler:Lorg/telegram/SQLite/LockDatabaseHandler;

    .line 627
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "plusconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    .local v0, "plusPreferences":Landroid/content/SharedPreferences;
    const-string v2, "showAndroidEmoji"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    .line 629
    const-string v2, "keepOriginalFilename"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    .line 630
    const-string v2, "useDeviceFont"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->USE_DEVICE_FONT:Z

    .line 631
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    .line 633
    return-void

    .end local v0    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_a9
    move v2, v3

    .line 621
    goto :goto_5e
.end method
