.class public Lorg/telegram/messenger/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# static fields
.field public static final FLAG_TAG_ALL:I = 0x3

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static final THEME_PREFS:Ljava/lang/String; = "theme"

.field public static final THEME_PREFS_MODE:I = 0x0

.field public static WEB_URL:Ljava/util/regex/Pattern; = null

.field private static adjustOwnerClassGuid:I = 0x0

.field private static bitmapRect:Landroid/graphics/RectF; = null

.field private static final callLock:Ljava/lang/Object;

.field private static callLogContentObserver:Landroid/database/ContentObserver; = null

.field public static final defColor:I = -0xad8a64

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static hasCallPermissions:Z

.field public static incorrectDisplaySizeFix:Z

.field public static isInMultiwindow:Z

.field private static isTablet:Ljava/lang/Boolean;

.field public static leftBaseline:I

.field private static mAttachInfoField:Ljava/lang/reflect/Field;

.field private static mStableInsetsField:Ljava/lang/reflect/Field;

.field public static photoSize:Ljava/lang/Integer;

.field private static prevOrientation:I

.field private static roundPaint:Landroid/graphics/Paint;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I

.field private static final typefaceCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static unregisterRunnable:Ljava/lang/Runnable;

.field public static usingHardwareInput:Z

.field private static waitingForCall:Z

.field private static waitingForSms:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 105
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    .line 106
    const/16 v8, -0xa

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 107
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 108
    sput-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 109
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 110
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 115
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 116
    const/high16 v8, 0x3f800000    # 1.0f

    sput v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 117
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    .line 119
    sput-object v11, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 120
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 125
    sput-object v11, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 126
    sput v9, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 131
    sput-object v11, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 134
    :try_start_3b
    const-string v2, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 135
    .local v2, "GOOD_IRI_CHAR":Ljava/lang/String;
    const-string v8, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 140
    .local v5, "IP_ADDRESS":Ljava/util/regex/Pattern;
    const-string v6, "[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}"

    .line 141
    .local v6, "IRI":Ljava/lang/String;
    const-string v1, "a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 142
    .local v1, "GOOD_GTLD_CHAR":Ljava/lang/String;
    const-string v3, "[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 143
    .local v3, "GTLD":Ljava/lang/String;
    const-string v4, "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 144
    .local v4, "HOST_NAME":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 145
    .local v0, "DOMAIN_NAME":Ljava/util/regex/Pattern;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")(?:\\:\\d{1,5})?)(\\/(?:(?:["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_93} :catch_ac

    .line 160
    .end local v0    # "DOMAIN_NAME":Ljava/util/regex/Pattern;
    .end local v1    # "GOOD_GTLD_CHAR":Ljava/lang/String;
    .end local v3    # "GTLD":Ljava/lang/String;
    .end local v4    # "HOST_NAME":Ljava/lang/String;
    .end local v5    # "IP_ADDRESS":Ljava/util/regex/Pattern;
    .end local v6    # "IRI":Ljava/lang/String;
    :goto_93
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_b1

    const/16 v8, 0x50

    :goto_9b
    sput v8, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    .line 161
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 709
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v8, v10, :cond_b4

    const/4 v8, 0x1

    :goto_a9
    sput-boolean v8, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    return-void

    .line 154
    :catch_ac
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_93

    .line 160
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b1
    const/16 v8, 0x48

    goto :goto_9b

    :cond_b4
    move v8, v9

    .line 709
    goto :goto_a9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZLjava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    sput-object p0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static addMediaToGallery(Landroid/net/Uri;)V
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1292
    if-nez p0, :cond_3

    .line 1302
    :goto_2
    return-void

    .line 1296
    :cond_3
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v1, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1298
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_2

    .line 1299
    .end local v1    # "mediaScanIntent":Landroid/content/Intent;
    :catch_13
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static addMediaToGallery(Ljava/lang/String;)V
    .registers 3
    .param p0, "fromPath"    # Ljava/lang/String;

    .prologue
    .line 1283
    if-nez p0, :cond_3

    .line 1289
    :goto_2
    return-void

    .line 1286
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1287
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1288
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1274
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1275
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "label"

    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1276
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1280
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_13
    return-void

    .line 1277
    :catch_14
    move-exception v2

    .line 1278
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static calcAuthKeyHash([B)[B
    .registers 5
    .param p0, "auth_key"    # [B

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 1562
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    .line 1563
    .local v1, "sha1":[B
    new-array v0, v3, [B

    .line 1564
    .local v0, "key_hash":[B
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1565
    return-object v0
.end method

.method public static calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I
    .registers 23
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    const/high16 v10, -0x1000000

    .line 166
    .local v10, "bitmapColor":I
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 168
    .local v13, "result":[I
    :try_start_5
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_9d

    .line 169
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 170
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_27

    .line 171
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v9, v2, v3, v4}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 172
    .local v8, "b":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_27

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 174
    if-eq v9, v8, :cond_27

    .line 175
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_ab

    .line 186
    .end local v8    # "b":Landroid/graphics/Bitmap;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_27
    :goto_27
    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v10, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v10, 0xff

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->rgbToHsv(III)[D

    move-result-object v12

    .line 187
    .local v12, "hsv":[D
    const/4 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v6, v12, v3

    const-wide v16, 0x3fa999999999999aL    # 0.05

    add-double v6, v6, v16

    const-wide v16, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    aget-wide v20, v12, v3

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 188
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    aget-wide v6, v12, v3

    const-wide v16, 0x3fe4cccccccccccdL    # 0.65

    mul-double v6, v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 189
    const/4 v2, 0x0

    aget-wide v2, v12, v2

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const/4 v6, 0x2

    aget-wide v6, v12, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->hsvToRgb(DDD)[I

    move-result-object v14

    .line 190
    .local v14, "rgb":[I
    const/4 v2, 0x0

    const/16 v3, 0x66

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 191
    const/4 v2, 0x1

    const/16 v3, 0x88

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x2

    aget v6, v14, v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v13, v2

    .line 192
    return-object v13

    .line 179
    .end local v12    # "hsv":[D
    .end local v14    # "rgb":[I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_27

    .line 180
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a8} :catch_ab

    move-result v10

    goto/16 :goto_27

    .line 182
    :catch_ab
    move-exception v11

    .line 183
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_27
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 649
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public static checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    .line 580
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sput v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    .line 581
    move-object v0, p1

    .line 582
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_19

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 585
    :cond_19
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v5, :cond_c0

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v5, :cond_c0

    :goto_21
    sput-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    .line 586
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 587
    .local v3, "manager":Landroid/view/WindowManager;
    if-eqz v3, :cond_3d

    .line 588
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 589
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_3d

    .line 590
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 591
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 594
    .end local v1    # "display":Landroid/view/Display;
    :cond_3d
    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v5, :cond_5c

    .line 595
    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 596
    .local v4, "newSize":I
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v8, :cond_5c

    .line 597
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->x:I

    .line 600
    .end local v4    # "newSize":I
    :cond_5c
    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v5, :cond_7b

    .line 601
    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 602
    .restart local v4    # "newSize":I
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v8, :cond_7b

    .line 603
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 606
    .end local v4    # "newSize":I
    :cond_7b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bf} :catch_c3

    .line 610
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "manager":Landroid/view/WindowManager;
    :goto_bf
    return-void

    .line 585
    .restart local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_c0
    const/4 v5, 0x0

    goto/16 :goto_21

    .line 607
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :catch_c3
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_bf
.end method

.method public static checkForCrashes(Landroid/app/Activity;)V
    .registers 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1252
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_f

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_6
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$5;

    invoke-direct {v1}, Lorg/telegram/messenger/AndroidUtilities$5;-><init>()V

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 1258
    return-void

    .line 1252
    :cond_f
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_6
.end method

.method public static checkForUpdates(Landroid/app/Activity;)V
    .registers 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 1261
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_d

    .line 1262
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_e

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    :goto_a
    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1264
    :cond_d
    return-void

    .line 1262
    :cond_e
    sget-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    goto :goto_a
.end method

.method public static checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 731
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 747
    :cond_f
    :goto_f
    return v5

    .line 734
    :cond_10
    const-string v6, "\\*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "args":[Ljava/lang/String;
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 736
    const/4 v3, 0x0

    .line 738
    .local v3, "checkStart":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1c
    array-length v6, v2

    if-ge v0, v6, :cond_f

    .line 739
    aget-object v1, v2, v0

    .line 740
    .local v1, "arg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 741
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .local v4, "index":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_30

    .line 742
    const/4 v5, 0x0

    goto :goto_f

    .line 744
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v3, v4, v6

    .line 738
    .end local v4    # "index":I
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public static clearCursorDrawable(Landroid/widget/EditText;)V
    .registers 5
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 695
    if-nez p0, :cond_3

    .line 705
    :goto_2
    return-void

    .line 699
    :cond_3
    :try_start_3
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 700
    .local v1, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 701
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_2

    .line 702
    .end local v1    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_14
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    if-nez p0, :cond_9

    .line 1128
    .end local p0    # "view":Landroid/view/View;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_8
    return-void

    .line 1116
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_9
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_1b

    .line 1117
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1118
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 1119
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_8

    .line 1122
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1123
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 1124
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_8
.end method

.method public static compare(II)I
    .registers 3
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 563
    if-ne p0, p1, :cond_4

    .line 564
    const/4 v0, 0x0

    .line 568
    :goto_3
    return v0

    .line 565
    :cond_4
    if-le p0, p1, :cond_8

    .line 566
    const/4 v0, 0x1

    goto :goto_3

    .line 568
    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 13
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1539
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1541
    :cond_9
    const/4 v9, 0x0

    .line 1542
    .local v9, "source":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1544
    .local v6, "destination":Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_38
    .catchall {:try_start_b .. :try_end_10} :catchall_48

    .line 1545
    .end local v9    # "source":Ljava/io/FileInputStream;
    .local v10, "source":Ljava/io/FileInputStream;
    :try_start_10
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_5b
    .catchall {:try_start_10 .. :try_end_15} :catchall_54

    .line 1546
    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .local v7, "destination":Ljava/io/FileOutputStream;
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_5e
    .catchall {:try_start_15 .. :try_end_2a} :catchall_57

    .line 1551
    if-eqz v10, :cond_2f

    .line 1552
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1554
    :cond_2f
    if-eqz v7, :cond_34

    .line 1555
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1558
    :cond_34
    const/4 v0, 0x1

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    :cond_37
    :goto_37
    return v0

    .line 1547
    :catch_38
    move-exception v8

    .line 1548
    .local v8, "e":Ljava/lang/Exception;
    :goto_39
    :try_start_39
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_48

    .line 1549
    const/4 v0, 0x0

    .line 1551
    if-eqz v9, :cond_42

    .line 1552
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1554
    :cond_42
    if-eqz v6, :cond_37

    .line 1555
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_37

    .line 1551
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v0

    :goto_49
    if-eqz v9, :cond_4e

    .line 1552
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1554
    :cond_4e
    if-eqz v6, :cond_53

    .line 1555
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_53
    throw v0

    .line 1551
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_54
    move-exception v0

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_49

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_57
    move-exception v0

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_49

    .line 1547
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_5b
    move-exception v8

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_39

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_5e
    move-exception v8

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_39
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 6
    .param p0, "sourceFile"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1527
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 1529
    .local v0, "buf":[B
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_17

    .line 1530
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1531
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 1533
    :cond_17
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1534
    const/4 v3, 0x1

    return v3
.end method

.method private static createShortcutIntent(JZ)Landroid/content/Intent;
    .registers 33
    .param p0, "did"    # J
    .param p2, "forDelete"    # Z

    .prologue
    .line 865
    new-instance v20, Landroid/content/Intent;

    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v26, Lorg/telegram/messenger/OpenChatReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 867
    .local v20, "shortcutIntent":Landroid/content/Intent;
    move-wide/from16 v0, p0

    long-to-int v13, v0

    .line 868
    .local v13, "lower_id":I
    const/16 v25, 0x20

    shr-long v26, p0, v25

    move-wide/from16 v0, v26

    long-to-int v11, v0

    .line 870
    .local v11, "high_id":I
    const/16 v23, 0x0

    .line 871
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    .line 872
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v13, :cond_4d

    .line 873
    const-string v25, "encId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v10

    .line 875
    .local v10, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v10, :cond_37

    .line 876
    const/4 v4, 0x0

    .line 972
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_36
    :goto_36
    return-object v4

    .line 878
    .restart local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_37
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 888
    .end local v10    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :goto_47
    if-nez v23, :cond_87

    if-nez v7, :cond_87

    .line 889
    const/4 v4, 0x0

    goto :goto_36

    .line 879
    :cond_4d
    if-lez v13, :cond_65

    .line 880
    const-string v25, "userId"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    goto :goto_47

    .line 882
    :cond_65
    if-gez v13, :cond_85

    .line 883
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    neg-int v0, v13

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 884
    const-string v25, "chatId"

    neg-int v0, v13

    move/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_47

    .line 886
    :cond_85
    const/4 v4, 0x0

    goto :goto_36

    .line 893
    :cond_87
    const/16 v16, 0x0

    .line 895
    .local v16, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v23, :cond_201

    .line 896
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 897
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_af

    .line 898
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    .line 907
    :cond_af
    :goto_af
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "com.tmessages.openchat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const/high16 v25, 0x4000000

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 910
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v4, "addIntent":Landroid/content/Intent;
    const-string v25, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 912
    const-string v25, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v25, "duplicate"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    if-nez p2, :cond_36

    .line 915
    const/4 v5, 0x0

    .line 916
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_1f6

    .line 918
    const/16 v25, 0x1

    :try_start_fd
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v15

    .line 919
    .local v15, "path":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 920
    if-eqz v5, :cond_1f6

    .line 921
    const/high16 v25, 0x42680000    # 58.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    .line 922
    .local v21, "size":I
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v21

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 923
    .local v17, "result":Landroid/graphics/Bitmap;
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 924
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 925
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/BitmapShader;

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v5, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 926
    .local v19, "shader":Landroid/graphics/BitmapShader;
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    if-nez v25, :cond_154

    .line 927
    new-instance v25, Landroid/graphics/Paint;

    const/16 v26, 0x1

    invoke-direct/range {v25 .. v26}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    .line 928
    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    sput-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    .line 930
    :cond_154
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v18, v25, v26

    .line 931
    .local v18, "scale":F
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 932
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 933
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 934
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 935
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sget-object v28, Lorg/telegram/messenger/AndroidUtilities;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 936
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 937
    sget-object v25, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020079

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 938
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v25, 0x41700000    # 15.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 939
    .local v24, "w":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v12, v25, v26

    .line 940
    .local v12, "left":I
    sub-int v25, v21, v24

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    sub-int v22, v25, v26

    .line 941
    .local v22, "top":I
    add-int v25, v12, v24

    add-int v26, v22, v24

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v8, v12, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 942
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1ed
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_1ed} :catch_215

    .line 944
    const/16 v25, 0x0

    :try_start_1ef
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f4} :catch_282
    .catch Ljava/lang/Throwable; {:try_start_1ef .. :try_end_1f4} :catch_215

    .line 948
    :goto_1f4
    move-object/from16 v5, v17

    .line 954
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "left":I
    .end local v15    # "path":Ljava/io/File;
    .end local v17    # "result":Landroid/graphics/Bitmap;
    .end local v18    # "scale":F
    .end local v19    # "shader":Landroid/graphics/BitmapShader;
    .end local v21    # "size":I
    .end local v22    # "top":I
    .end local v24    # "w":I
    :cond_1f6
    :goto_1f6
    if-eqz v5, :cond_21a

    .line 955
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 901
    .end local v4    # "addIntent":Landroid/content/Intent;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "name":Ljava/lang/String;
    :cond_201
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 902
    .restart local v14    # "name":Ljava/lang/String;
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    if-eqz v25, :cond_af

    .line 903
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v16, v0

    goto/16 :goto_af

    .line 950
    .restart local v4    # "addIntent":Landroid/content/Intent;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_215
    move-exception v9

    .line 951
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f6

    .line 957
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_21a
    if-eqz v23, :cond_24c

    .line 958
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v25, v0

    if-eqz v25, :cond_238

    .line 959
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020076

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 961
    :cond_238
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f02007a

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 963
    :cond_24c
    if-eqz v7, :cond_36

    .line 964
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v25

    if-eqz v25, :cond_26e

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v25, v0

    if-nez v25, :cond_26e

    .line 965
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020077

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 967
    :cond_26e
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v26, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const v27, 0x7f020078

    invoke-static/range {v26 .. v27}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_36

    .line 945
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "left":I
    .restart local v15    # "path":Ljava/io/File;
    .restart local v17    # "result":Landroid/graphics/Bitmap;
    .restart local v18    # "scale":F
    .restart local v19    # "shader":Landroid/graphics/BitmapShader;
    .restart local v21    # "size":I
    .restart local v22    # "top":I
    .restart local v24    # "w":I
    :catch_282
    move-exception v25

    goto/16 :goto_1f4
.end method

.method public static decodeQuotedPrintable([B)[B
    .registers 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1497
    if-nez p0, :cond_4

    .line 1522
    :goto_3
    return-object v0

    .line 1500
    :cond_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1501
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    array-length v7, p0

    if-ge v4, v7, :cond_3c

    .line 1502
    aget-byte v1, p0, v4

    .line 1503
    .local v1, "b":I
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_38

    .line 1505
    add-int/lit8 v4, v4, 0x1

    :try_start_15
    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1506
    .local v6, "u":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1507
    .local v5, "l":I
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_33

    .line 1501
    .end local v5    # "l":I
    .end local v6    # "u":I
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1508
    :catch_33
    move-exception v3

    .line 1509
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1513
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_38
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_30

    .line 1516
    .end local v1    # "b":I
    :cond_3c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1518
    .local v0, "array":[B
    :try_start_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3

    .line 1519
    :catch_44
    move-exception v3

    .line 1520
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1749
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1750
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 1751
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->deleteDirectory(Ljava/io/File;)V

    .line 1750
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1754
    .end local v0    # "child":Ljava/io/File;
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1755
    return-void
.end method

.method public static dp(F)I
    .registers 3
    .param p0, "value"    # F

    .prologue
    .line 549
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    .line 550
    const/4 v0, 0x0

    .line 552
    :goto_6
    return v0

    :cond_7
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method public static dp2(F)I
    .registers 3
    .param p0, "value"    # F

    .prologue
    .line 556
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_6
    return v0

    :cond_7
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_6
.end method

.method public static dpf2(F)F
    .registers 3
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 572
    cmpl-float v1, p0, v0

    if-nez v1, :cond_6

    .line 575
    :goto_5
    return v0

    :cond_6
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    goto :goto_5
.end method

.method public static endIncomingCall()V
    .registers 7

    .prologue
    .line 713
    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v5, :cond_5

    .line 728
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :goto_4
    return-void

    .line 717
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_5
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 718
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 719
    .local v0, "c":Ljava/lang/Class;
    const-string v5, "getITelephony"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 720
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 721
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ITelephony;

    .line 722
    .local v3, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    check-cast v3, Lcom/android/internal/telephony/ITelephony;

    .line 723
    .restart local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 724
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_4

    .line 725
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_41
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .registers 8
    .param p0, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    .line 1485
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 1486
    const-string v0, "%d B"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    :goto_18
    return-object v0

    .line 1487
    :cond_19
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_31

    .line 1488
    const-string v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1489
    :cond_31
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_4a

    .line 1490
    const-string v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1492
    :cond_4a
    const-string v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public static generatePicturePath()Ljava/io/File;
    .registers 6

    .prologue
    .line 1418
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1419
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 1424
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_34
    return-object v3

    .line 1421
    :catch_35
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1424
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public static generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 15
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;
    .param p2, "q"    # Ljava/lang/String;

    .prologue
    .line 1428
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 1429
    const-string v0, ""

    .line 1470
    :cond_6
    :goto_6
    return-object v0

    .line 1431
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1432
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    move-object v8, p0

    .line 1433
    .local v8, "wholeString":Ljava/lang/String;
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a3

    .line 1434
    :cond_15
    move-object v8, p1

    .line 1438
    :cond_16
    :goto_16
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1442
    .local v5, "lower":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1443
    .local v4, "lastIndex":I
    :goto_32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .local v3, "index":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_d5

    .line 1444
    if-nez v3, :cond_c4

    const/4 v9, 0x0

    :goto_4f
    sub-int v2, v3, v9

    .line 1445
    .local v2, "idx":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v3, :cond_c6

    const/4 v9, 0x0

    :goto_58
    add-int/2addr v9, v10

    add-int v1, v9, v2

    .line 1447
    .local v1, "end":I
    if-eqz v4, :cond_c8

    add-int/lit8 v9, v2, 0x1

    if-eq v4, v9, :cond_c8

    .line 1448
    invoke-virtual {v8, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1453
    :cond_68
    :goto_68
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1454
    .local v6, "query":Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 1455
    const-string v9, " "

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1457
    :cond_81
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1459
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1460
    .local v7, "start":I
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1461
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "windowBackgroundWhiteBlueText4"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v7

    const/16 v11, 0x21

    invoke-virtual {v0, v9, v7, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1463
    move v4, v1

    .line 1464
    goto :goto_32

    .line 1435
    .end local v1    # "end":I
    .end local v2    # "idx":I
    .end local v3    # "index":I
    .end local v4    # "lastIndex":I
    .end local v5    # "lower":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_a3
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_16

    .line 1436
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_16

    .line 1444
    .restart local v3    # "index":I
    .restart local v4    # "lastIndex":I
    .restart local v5    # "lower":Ljava/lang/String;
    :cond_c4
    const/4 v9, 0x1

    goto :goto_4f

    .line 1445
    .restart local v2    # "idx":I
    :cond_c6
    const/4 v9, 0x1

    goto :goto_58

    .line 1449
    .restart local v1    # "end":I
    :cond_c8
    if-nez v4, :cond_68

    if-eqz v2, :cond_68

    .line 1450
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_68

    .line 1466
    .end local v1    # "end":I
    .end local v2    # "idx":I
    :cond_d5
    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_6

    .line 1467
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6
.end method

.method public static generateVideoPath()Ljava/io/File;
    .registers 6

    .prologue
    .line 1475
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getAlbumDir()Ljava/io/File;

    move-result-object v1

    .line 1476
    .local v1, "storageDir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1477
    .local v2, "timeStamp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VID_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 1481
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_34
    return-object v3

    .line 1478
    :catch_35
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1481
    const/4 v3, 0x0

    goto :goto_34
.end method

.method private static getAlbumDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 1305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1a

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 1306
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1321
    .local v0, "storageDir":Ljava/io/File;
    :cond_19
    :goto_19
    return-object v0

    .line 1308
    .end local v0    # "storageDir":Ljava/io/File;
    :cond_1a
    const/4 v0, 0x0

    .line 1309
    .restart local v0    # "storageDir":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1310
    new-instance v0, Ljava/io/File;

    .end local v0    # "storageDir":Ljava/io/File;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1311
    .restart local v0    # "storageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1312
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1313
    const-string v1, "failed to create directory"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1314
    const/4 v0, 0x0

    goto :goto_19

    .line 1318
    :cond_47
    const-string v1, "External storage is not mounted READ/WRITE."

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static getCacheDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, "state":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_18

    move-result-object v2

    .line 527
    :goto_5
    if-eqz v2, :cond_f

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 529
    :cond_f
    :try_start_f
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_1d

    move-result-object v1

    .line 530
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_21

    .line 545
    .end local v1    # "file":Ljava/io/File;
    :cond_17
    :goto_17
    return-object v1

    .line 524
    :catch_18
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :try_start_21
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_31

    move-result-object v1

    .line 539
    .restart local v1    # "file":Ljava/io/File;
    if-nez v1, :cond_17

    .line 545
    .end local v1    # "file":Ljava/io/File;
    :goto_29
    new-instance v1, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 542
    :catch_31
    move-exception v0

    .line 543
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public static getColorBrightness(I)I
    .registers 7
    .param p0, "color"    # I

    .prologue
    .line 1764
    const-wide v0, 0x3fd322d0e5604189L    # 0.299

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe2c8b439581062L    # 0.587

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getDarkerColor(II)I
    .registers 8
    .param p0, "baseColor"    # I
    .param p1, "factor"    # I

    .prologue
    const/16 v5, 0xff

    .line 1768
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1769
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    sub-int v3, v4, p1

    .line 1770
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int v2, v4, p1

    .line 1771
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int v1, v4, p1

    .line 1772
    .local v1, "blue":I
    if-gez p1, :cond_2f

    .line 1773
    if-le v3, v5, :cond_1e

    .line 1774
    const/16 v3, 0xff

    .line 1776
    :cond_1e
    if-le v2, v5, :cond_22

    .line 1777
    const/16 v2, 0xff

    .line 1779
    :cond_22
    if-le v1, v5, :cond_26

    .line 1780
    const/16 v1, 0xff

    .line 1782
    :cond_26
    if-ne v3, v5, :cond_2f

    if-ne v2, v5, :cond_2f

    if-ne v1, v5, :cond_2f

    .line 1783
    move v3, p1

    .line 1784
    move v2, p1

    .line 1785
    move v1, p1

    .line 1788
    :cond_2f
    if-lez p1, :cond_43

    .line 1789
    if-gez v3, :cond_34

    .line 1790
    const/4 v3, 0x0

    .line 1792
    :cond_34
    if-gez v2, :cond_37

    .line 1793
    const/4 v2, 0x0

    .line 1795
    :cond_37
    if-gez v1, :cond_3a

    .line 1796
    const/4 v1, 0x0

    .line 1798
    :cond_3a
    if-nez v3, :cond_43

    if-nez v2, :cond_43

    if-nez v1, :cond_43

    .line 1799
    move v3, p1

    .line 1800
    move v2, p1

    .line 1801
    move v1, p1

    .line 1804
    :cond_43
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1378
    const/4 v8, 0x0

    .line 1379
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 1380
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1385
    .local v2, "projection":[Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1386
    if-eqz v8, :cond_4f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1387
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1388
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1389
    .local v10, "value":Ljava/lang/String;
    const-string v0, "content://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "file://"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_56
    .catchall {:try_start_c .. :try_end_3f} :catchall_60

    move-result v0

    if-nez v0, :cond_49

    .line 1397
    :cond_42
    if-eqz v8, :cond_47

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_47
    move-object v10, v11

    .line 1401
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_48
    :goto_48
    return-object v10

    .line 1397
    .restart local v7    # "column_index":I
    .restart local v10    # "value":Ljava/lang/String;
    :cond_49
    if-eqz v8, :cond_48

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 1397
    .end local v7    # "column_index":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_4f
    if-eqz v8, :cond_54

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_54
    :goto_54
    move-object v10, v11

    .line 1401
    goto :goto_48

    .line 1394
    :catch_56
    move-exception v9

    .line 1395
    .local v9, "e":Ljava/lang/Exception;
    :try_start_57
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_60

    .line 1397
    if-eqz v8, :cond_54

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_54

    .line 1397
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v0

    if-eqz v8, :cond_66

    .line 1398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0
.end method

.method public static getIntAlphaColor(Ljava/lang/String;IF)I
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I
    .param p2, "factor"    # F

    .prologue
    .line 1699
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "theme"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1700
    .local v5, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v5, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1701
    .local v2, "color":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1702
    .local v0, "alpha":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1703
    .local v4, "red":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1704
    .local v3, "green":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1705
    .local v1, "blue":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method public static getIntDarkerColor(Ljava/lang/String;I)I
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "factor"    # I

    .prologue
    .line 1709
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1710
    .local v1, "themePrefs":Landroid/content/SharedPreferences;
    const v2, -0xad8a64

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1711
    .local v0, "color":I
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v2

    return v2
.end method

.method public static getIntDef(Ljava/lang/String;I)I
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 1744
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1745
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getMinTabletSide()I
    .registers 6

    .prologue
    const/high16 v5, 0x43a00000    # 320.0f

    .line 665
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-nez v3, :cond_25

    .line 666
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 667
    .local v2, "smallSide":I
    mul-int/lit8 v3, v2, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 668
    .local v0, "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 669
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 671
    :cond_22
    sub-int v3, v2, v0

    .line 679
    :goto_24
    return v3

    .line 673
    .end local v0    # "leftSide":I
    .end local v2    # "smallSide":I
    :cond_25
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 674
    .restart local v2    # "smallSide":I
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 675
    .local v1, "maxSide":I
    mul-int/lit8 v3, v1, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 676
    .restart local v0    # "leftSide":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 677
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 679
    :cond_4b
    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_24
.end method

.method public static getMyLayerVersion(I)I
    .registers 2
    .param p0, "layer"    # I

    .prologue
    .line 621
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 1327
    :try_start_3
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v11, v13, :cond_4e

    move v4, v12

    .line 1328
    .local v4, "isKitKat":Z
    :goto_a
    if-eqz v4, :cond_cf

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v11, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 1329
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 1330
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1331
    .local v1, "docId":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1332
    .local v7, "split":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v8, v7, v10

    .line 1333
    .local v8, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1373
    .end local v1    # "docId":Ljava/lang/String;
    .end local v4    # "isKitKat":Z
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return-object v9

    :cond_4e
    move v4, v10

    .line 1327
    goto :goto_a

    .line 1336
    .restart local v4    # "isKitKat":Z
    :cond_50
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 1337
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1338
    .local v3, "id":Ljava/lang/String;
    const-string v10, "content://downloads/public_downloads"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1339
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4d

    .line 1340
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "id":Ljava/lang/String;
    :cond_75
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 1341
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1342
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1343
    .restart local v7    # "split":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v8, v7, v11

    .line 1345
    .restart local v8    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1346
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const/4 v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_fe

    :cond_91
    move v10, v11

    :goto_92
    packed-switch v10, :pswitch_data_10c

    .line 1358
    :goto_95
    const-string v5, "_id=?"

    .line 1359
    .local v5, "selection":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v6, v10

    .line 1363
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v11, "_id=?"

    invoke-static {v10, v0, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4d

    .line 1346
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :sswitch_a9
    const-string v12, "image"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_91

    goto :goto_92

    :sswitch_b2
    const-string v10, "video"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    move v10, v12

    goto :goto_92

    :sswitch_bc
    const-string v10, "audio"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    const/4 v10, 0x2

    goto :goto_92

    .line 1348
    :pswitch_c6
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1349
    goto :goto_95

    .line 1351
    :pswitch_c9
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1352
    goto :goto_95

    .line 1354
    :pswitch_cc
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_95

    .line 1365
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_cf
    const-string v10, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e5

    .line 1366
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, p0, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4d

    .line 1367
    :cond_e5
    const-string v10, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1368
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f4} :catch_f7

    move-result-object v9

    goto/16 :goto_4d

    .line 1370
    .end local v4    # "isKitKat":Z
    :catch_f7
    move-exception v2

    .line 1371
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1346
    nop

    :sswitch_data_fe
    .sparse-switch
        0x58d9bd6 -> :sswitch_bc
        0x5faa95b -> :sswitch_a9
        0x6b0147b -> :sswitch_b2
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_c9
        :pswitch_cc
    .end packed-switch
.end method

.method public static getPeerLayerVersion(I)I
    .registers 3
    .param p0, "layer"    # I

    .prologue
    .line 625
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getPhotoSize()I
    .registers 2

    .prologue
    .line 684
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez v0, :cond_12

    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    .line 686
    const/16 v0, 0x500

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 691
    :cond_12
    :goto_12
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 688
    :cond_19
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    goto :goto_12
.end method

.method public static getPixelsInCM(FZ)F
    .registers 4
    .param p0, "cm"    # F
    .param p1, "isX"    # Z

    .prologue
    .line 613
    const v0, 0x40228f5c

    div-float v1, p0, v0

    if-eqz p1, :cond_d

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_b
    mul-float/2addr v0, v1

    return v0

    :cond_d
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_b
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 1022
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1024
    .local v3, "size":Landroid/graphics/Point;
    :try_start_5
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1025
    .local v4, "windowManager":Landroid/view/WindowManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1d

    .line 1026
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_71

    .line 1040
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :goto_1c
    return-object v3

    .line 1029
    .restart local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_1d
    :try_start_1d
    const-class v5, Landroid/view/Display;

    const-string v6, "getRawWidth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1030
    .local v2, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v5, Landroid/view/Display;

    const-string v6, "getRawHeight"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1031
    .local v1, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_58} :catch_59

    goto :goto_1c

    .line 1032
    .end local v1    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v2    # "mGetRawW":Ljava/lang/reflect/Method;
    :catch_59
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 1034
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_71

    goto :goto_1c

    .line 1037
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :catch_71
    move-exception v0

    .line 1038
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "src"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 1044
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1053
    :cond_d
    return-object p0

    .line 1047
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_20

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2a

    .line 1048
    :cond_20
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_e

    .line 1050
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_48

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_d

    .line 1051
    :cond_48
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2a
.end method

.method public static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 388
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    monitor-enter v6

    .line 390
    :try_start_4
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 391
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "font_type"

    const-string/jumbo v7, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "font":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_128

    :cond_1e
    move v4, v5

    :goto_1f
    packed-switch v4, :pswitch_data_162

    .line 439
    :goto_22
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_125

    move-result v4

    if-nez v4, :cond_39

    .line 441
    :try_start_2a
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 442
    .local v3, "t":Landroid/graphics/Typeface;
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_120
    .catchall {:try_start_2a .. :try_end_39} :catchall_125

    .line 448
    .end local v3    # "t":Landroid/graphics/Typeface;
    :cond_39
    :try_start_39
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    monitor-exit v6

    :goto_42
    return-object v4

    .line 392
    :sswitch_43
    const-string/jumbo v7, "\u062a\u0644\u06af\u0631\u0627\u0645"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_1f

    :sswitch_4d
    const-string/jumbo v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :sswitch_58
    const-string/jumbo v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u062e\u06cc\u0644\u06cc \u0646\u0627\u0632\u06a9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x2

    goto :goto_1f

    :sswitch_63
    const-string/jumbo v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u0639\u0645\u0648\u0644\u06cc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x3

    goto :goto_1f

    :sswitch_6e
    const-string/jumbo v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u062a\u0648\u0633\u0637"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x4

    goto :goto_1f

    :sswitch_79
    const-string/jumbo v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0636\u062e\u06cc\u0645"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x5

    goto :goto_1f

    :sswitch_84
    const-string/jumbo v4, "\u0627\u0641\u0633\u0627\u0646\u0647"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x6

    goto :goto_1f

    :sswitch_8f
    const-string/jumbo v4, "\u062f\u0633\u062a \u0646\u0648\u06cc\u0633"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x7

    goto :goto_1f

    :sswitch_9a
    const-string/jumbo v4, "\u0647\u0645\u0627"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0x8

    goto/16 :goto_1f

    :sswitch_a7
    const-string/jumbo v4, "\u0645\u0631\u0648\u0627\u0631\u06cc\u062f"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0x9

    goto/16 :goto_1f

    :sswitch_b4
    const-string/jumbo v4, "\u06cc\u06a9\u0627\u0646"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0xa

    goto/16 :goto_1f

    :sswitch_c1
    const-string/jumbo v4, "\u062a\u0631\u0627\u0641\u06cc\u06a9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0xb

    goto/16 :goto_1f

    :sswitch_ce
    const-string/jumbo v4, "\u06a9\u0648\u062f\u06a9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0xc

    goto/16 :goto_1f

    :sswitch_db
    const-string/jumbo v4, "\u0644\u0648\u062a\u0648\u0633"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0xd

    goto/16 :goto_1f

    .line 394
    :pswitch_e8
    const-string p0, "fonts/rmedium.ttf"

    .line 395
    goto/16 :goto_22

    .line 397
    :pswitch_ec
    const-string p0, "fonts/iransans_light.ttf"

    .line 398
    goto/16 :goto_22

    .line 400
    :pswitch_f0
    const-string p0, "fonts/iransans_ultrlight.ttf"

    .line 401
    goto/16 :goto_22

    .line 403
    :pswitch_f4
    const-string p0, "fonts/iransans.ttf"

    .line 404
    goto/16 :goto_22

    .line 406
    :pswitch_f8
    const-string p0, "fonts/iransans_medium.ttf"

    .line 407
    goto/16 :goto_22

    .line 409
    :pswitch_fc
    const-string p0, "fonts/iransans_bold.ttf"

    .line 410
    goto/16 :goto_22

    .line 412
    :pswitch_100
    const-string p0, "fonts/afsaneh.ttf"

    .line 413
    goto/16 :goto_22

    .line 415
    :pswitch_104
    const-string p0, "fonts/dastnevis.ttf"

    .line 416
    goto/16 :goto_22

    .line 418
    :pswitch_108
    const-string p0, "fonts/hama.ttf"

    .line 419
    goto/16 :goto_22

    .line 421
    :pswitch_10c
    const-string p0, "fonts/morvarid.ttf"

    .line 422
    goto/16 :goto_22

    .line 424
    :pswitch_110
    const-string p0, "fonts/yekan.ttf"

    .line 425
    goto/16 :goto_22

    .line 427
    :pswitch_114
    const-string p0, "fonts/traffic.ttf"

    .line 428
    goto/16 :goto_22

    .line 430
    :pswitch_118
    const-string p0, "fonts/koodak.ttf"

    .line 431
    goto/16 :goto_22

    .line 433
    :pswitch_11c
    const-string p0, "fonts/lotus.ttf"

    .line 434
    goto/16 :goto_22

    .line 443
    :catch_120
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    monitor-exit v6

    goto/16 :goto_42

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "font":Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catchall_125
    move-exception v4

    monitor-exit v6
    :try_end_127
    .catchall {:try_start_39 .. :try_end_127} :catchall_125

    throw v4

    .line 392
    :sswitch_data_128
    .sparse-switch
        -0x6c75a377 -> :sswitch_a7
        -0x2de587bd -> :sswitch_8f
        -0x2554fdf1 -> :sswitch_84
        -0x211cee62 -> :sswitch_c1
        -0x1fd3adc6 -> :sswitch_43
        0x185909 -> :sswitch_9a
        0x31f6759 -> :sswitch_ce
        0x320791d -> :sswitch_6e
        0x330bb1c -> :sswitch_b4
        0x5b3e2591 -> :sswitch_db
        0x61c10529 -> :sswitch_63
        0x632be5db -> :sswitch_79
        0x6332ff42 -> :sswitch_4d
        0x66ca6128 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_ec
        :pswitch_f0
        :pswitch_f4
        :pswitch_f8
        :pswitch_fc
        :pswitch_100
        :pswitch_104
        :pswitch_108
        :pswitch_10c
        :pswitch_110
        :pswitch_114
        :pswitch_118
        :pswitch_11c
    .end packed-switch
.end method

.method public static getUserPrefs(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 1758
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getUserPrefs(Ljava/lang/String;II)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getUserPrefs(Ljava/lang/String;II)Landroid/content/SharedPreferences;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "user"    # I

    .prologue
    .line 1761
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 998
    if-eqz p0, :cond_20

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_21

    .line 1018
    :cond_20
    :goto_20
    return v3

    .line 1002
    :cond_21
    :try_start_21
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_35

    .line 1003
    const-class v4, Landroid/view/View;

    const-string v5, "mAttachInfo"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    .line 1004
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1006
    :cond_35
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1007
    .local v2, "mAttachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_20

    .line 1008
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_53

    .line 1009
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mStableInsets"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    .line 1010
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1012
    :cond_53
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mStableInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1013
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5d} :catch_5e

    goto :goto_20

    .line 1015
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "mAttachInfo":Ljava/lang/Object;
    :catch_5e
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 506
    if-nez p0, :cond_3

    .line 518
    :cond_2
    :goto_2
    return-void

    .line 510
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 511
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    goto :goto_2

    .line 515
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_1e
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static hsvToRgb(DDD)[I
    .registers 28
    .param p0, "h"    # D
    .param p2, "s"    # D
    .param p4, "v"    # D

    .prologue
    .line 220
    const-wide/16 v14, 0x0

    .local v14, "r":D
    const-wide/16 v6, 0x0

    .local v6, "g":D
    const-wide/16 v2, 0x0

    .line 221
    .local v2, "b":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v8, v0

    .line 222
    .local v8, "i":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    sub-double v4, v18, v8

    .line 223
    .local v4, "f":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, p2

    mul-double v10, p4, v18

    .line 224
    .local v10, "p":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v4, p2

    sub-double v18, v18, v20

    mul-double v12, p4, v18

    .line 225
    .local v12, "q":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v4

    mul-double v20, v20, p2

    sub-double v18, v18, v20

    mul-double v16, p4, v18

    .line 226
    .local v16, "t":D
    double-to-int v0, v8

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x6

    packed-switch v18, :pswitch_data_98

    .line 258
    :goto_3e
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x2

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    return-object v18

    .line 228
    :pswitch_77
    move-wide/from16 v14, p4

    .line 229
    move-wide/from16 v6, v16

    .line 230
    move-wide v2, v10

    .line 231
    goto :goto_3e

    .line 233
    :pswitch_7d
    move-wide v14, v12

    .line 234
    move-wide/from16 v6, p4

    .line 235
    move-wide v2, v10

    .line 236
    goto :goto_3e

    .line 238
    :pswitch_82
    move-wide v14, v10

    .line 239
    move-wide/from16 v6, p4

    .line 240
    move-wide/from16 v2, v16

    .line 241
    goto :goto_3e

    .line 243
    :pswitch_88
    move-wide v14, v10

    .line 244
    move-wide v6, v12

    .line 245
    move-wide/from16 v2, p4

    .line 246
    goto :goto_3e

    .line 248
    :pswitch_8d
    move-wide/from16 v14, v16

    .line 249
    move-wide v6, v10

    .line 250
    move-wide/from16 v2, p4

    .line 251
    goto :goto_3e

    .line 253
    :pswitch_93
    move-wide/from16 v14, p4

    .line 254
    move-wide v6, v10

    .line 255
    move-wide v2, v12

    goto :goto_3e

    .line 226
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_77
        :pswitch_7d
        :pswitch_82
        :pswitch_88
        :pswitch_8d
        :pswitch_93
    .end packed-switch
.end method

.method public static installShortcut(J)V
    .registers 6
    .param p0, "did"    # J

    .prologue
    .line 977
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 978
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 983
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_f
    return-void

    .line 980
    :catch_10
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1409
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1405
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGoogleMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .registers 7
    .param p0, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v2, 0x0

    .line 280
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.apps.maps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    .line 281
    const/4 v2, 0x1

    .line 301
    :cond_e
    :goto_e
    return v2

    .line 282
    :catch_f
    move-exception v1

    .line 283
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 286
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "Install Google Maps?"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 288
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/AndroidUtilities$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/AndroidUtilities$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 299
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 300
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "pathString":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 328
    :cond_7
    :goto_7
    return v4

    .line 315
    .local v1, "newPath":Ljava/lang/String;
    :cond_8
    move-object v3, v1

    .line 311
    .end local v1    # "newPath":Ljava/lang/String;
    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1    # "newPath":Ljava/lang/String;
    if-eqz v1, :cond_15

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 317
    :cond_15
    if-eqz v3, :cond_23

    .line 319
    :try_start_17
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_50

    move-result-object v2

    .line 320
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 321
    move-object v3, v2

    .line 328
    .end local v2    # "path":Ljava/lang/String;
    :cond_23
    :goto_23
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    .line 323
    :catch_50
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "/./"

    const-string v6, "/"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_23
.end method

.method public static isKeyboardShowed(Landroid/view/View;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 493
    if-nez p0, :cond_4

    .line 502
    :goto_3
    return v2

    .line 497
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 498
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_15

    move-result v2

    goto :goto_3

    .line 499
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_15
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1413
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .registers 3

    .prologue
    .line 660
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v0, v1, v2

    .line 661
    .local v0, "minSide":F
    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static isTablet()Z
    .registers 2

    .prologue
    .line 653
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 654
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 656
    :cond_17
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWaitingForCall()Z
    .registers 3

    .prologue
    .line 468
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_3
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 470
    .local v0, "value":Z
    monitor-exit v2

    .line 471
    return v0

    .line 470
    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static isWaitingForSms()Z
    .registers 3

    .prologue
    .line 454
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_3
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 456
    .local v0, "value":Z
    monitor-exit v2

    .line 457
    return v0

    .line 456
    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 332
    if-eqz p0, :cond_a

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_b

    .line 371
    :cond_a
    :goto_a
    return-void

    .line 336
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    sput v4, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    .line 337
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 338
    .local v1, "manager":Landroid/view/WindowManager;
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 339
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 340
    .local v3, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 342
    .local v2, "orientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_48

    .line 343
    if-ne v2, v6, :cond_42

    .line 344
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_3d

    goto :goto_a

    .line 368
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "orientation":I
    .end local v3    # "rotation":I
    :catch_3d
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "manager":Landroid/view/WindowManager;
    .restart local v2    # "orientation":I
    .restart local v3    # "rotation":I
    :cond_42
    const/16 v4, 0x8

    :try_start_44
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 348
    :cond_48
    if-ne v3, v6, :cond_57

    .line 349
    if-ne v2, v6, :cond_52

    .line 350
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 352
    :cond_52
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 354
    :cond_57
    if-nez v3, :cond_65

    .line 355
    if-ne v2, v7, :cond_60

    .line 356
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 358
    :cond_60
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 361
    :cond_65
    if-ne v2, v7, :cond_6d

    .line 362
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a

    .line 364
    :cond_6d
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_72} :catch_3d

    goto :goto_a
.end method

.method public static makeBroadcastId(I)J
    .registers 7
    .param p0, "id"    # I

    .prologue
    .line 617
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static needShowPasscode(Z)Z
    .registers 4
    .param p0, "reset"    # Z

    .prologue
    .line 1177
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/ForegroundDetector;->isWasInBackground(Z)Z

    move-result v0

    .line 1178
    .local v0, "wasInBackground":Z
    if-eqz p0, :cond_11

    .line 1179
    invoke-static {}, Lorg/telegram/ui/Components/ForegroundDetector;->getInstance()Lorg/telegram/ui/Components/ForegroundDetector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ForegroundDetector;->resetBackgroundVar()V

    .line 1181
    :cond_11
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3c

    if-eqz v0, :cond_3c

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_3a

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v1, :cond_3c

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v1, :cond_3c

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-nez v1, :cond_3c

    sget v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    sget v2, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    add-int/2addr v1, v2

    .line 1182
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-gt v1, v2, :cond_3c

    :cond_3a
    const/4 v1, 0x1

    .line 1181
    :goto_3b
    return v1

    .line 1182
    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public static obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 751
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_7

    move-object v10, v11

    .line 780
    :cond_6
    :goto_6
    return-object v10

    .line 754
    :cond_7
    const/4 v6, 0x0

    .line 756
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "type IN (3,1,5)"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 762
    :cond_26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 763
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 764
    .local v10, "number":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 765
    .local v8, "date":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    .line 769
    invoke-static {p0, v10}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5f} :catch_6f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_79

    move-result v0

    if-eqz v0, :cond_26

    .line 776
    if-eqz v6, :cond_6

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 776
    .end local v8    # "date":J
    .end local v10    # "number":Ljava/lang/String;
    :cond_68
    if-eqz v6, :cond_6d

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6d
    :goto_6d
    move-object v10, v11

    .line 780
    goto :goto_6

    .line 773
    :catch_6f
    move-exception v7

    .line 774
    .local v7, "e":Ljava/lang/Exception;
    :try_start_70
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_79

    .line 776
    if-eqz v6, :cond_6d

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    .line 776
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_79
    move-exception v0

    if-eqz v6, :cond_7f

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
.end method

.method public static openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;)V
    .registers 14
    .param p0, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/16 v10, 0x1f4

    .line 1569
    const/4 v2, 0x0

    .line 1570
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1571
    .local v3, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v8, :cond_22

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_22

    .line 1572
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1574
    .restart local v2    # "f":Ljava/io/File;
    :cond_22
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_30

    .line 1575
    :cond_2a
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1577
    :cond_30
    if-eqz v2, :cond_91

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 1578
    const/4 v7, 0x0

    .line 1579
    .local v7, "realMimeType":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1580
    .local v5, "intent":Landroid/content/Intent;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1581
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1582
    .local v6, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1583
    .local v4, "idx":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_7a

    .line 1584
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1586
    if-nez v7, :cond_7a

    .line 1587
    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_6b

    iget v8, p0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v8, :cond_71

    .line 1588
    :cond_6b
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1590
    :cond_71
    if-eqz v7, :cond_79

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7a

    .line 1591
    :cond_79
    const/4 v7, 0x0

    .line 1595
    .end local v1    # "ext":Ljava/lang/String;
    :cond_7a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_95

    .line 1596
    const-string v8, "com.ongram.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_92

    move-object v8, v7

    :goto_87
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    :goto_8a
    if-eqz v7, :cond_c1

    .line 1602
    const/16 v8, 0x1f4

    :try_start_8e
    invoke-virtual {p1, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_a3

    .line 1615
    .end local v4    # "idx":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v7    # "realMimeType":Ljava/lang/String;
    :cond_91
    :goto_91
    return-void

    .line 1596
    .restart local v4    # "idx":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v7    # "realMimeType":Ljava/lang/String;
    :cond_92
    const-string v8, "text/plain"

    goto :goto_87

    .line 1598
    :cond_95
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_a0

    move-object v8, v7

    :goto_9c
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8a

    :cond_a0
    const-string v8, "text/plain"

    goto :goto_9c

    .line 1603
    :catch_a3
    move-exception v0

    .line 1604
    .local v0, "e":Ljava/lang/Exception;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_b7

    .line 1605
    const-string v8, "com.ongram.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    :goto_b3
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_91

    .line 1607
    :cond_b7
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b3

    .line 1612
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c1
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_91
.end method

.method public static openForView(Lorg/telegram/tgnet/TLObject;Landroid/app/Activity;)V
    .registers 14
    .param p0, "media"    # Lorg/telegram/tgnet/TLObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/4 v9, 0x1

    const/16 v10, 0x1f4

    .line 1618
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 1661
    .end local p0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_9
    :goto_9
    return-void

    .line 1621
    .restart local p0    # "media":Lorg/telegram/tgnet/TLObject;
    :cond_a
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 1622
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {p0, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 1623
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1624
    const/4 v7, 0x0

    .line 1625
    .local v7, "realMimeType":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1627
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 1628
    .local v6, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1629
    .local v4, "idx":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_53

    .line 1630
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1632
    if-nez v7, :cond_53

    .line 1633
    instance-of v8, p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v8, :cond_4a

    .line 1634
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local p0    # "media":Lorg/telegram/tgnet/TLObject;
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 1636
    :cond_4a
    if-eqz v7, :cond_52

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_53

    .line 1637
    :cond_52
    const/4 v7, 0x0

    .line 1641
    .end local v1    # "ext":Ljava/lang/String;
    :cond_53
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_82

    .line 1642
    const-string v8, "com.ongram.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_7f

    move-object v8, v7

    :goto_60
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    :goto_63
    if-eqz v7, :cond_9a

    .line 1648
    const/16 v8, 0x1f4

    :try_start_67
    invoke-virtual {p1, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_9

    .line 1649
    :catch_6b
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v11, :cond_90

    .line 1651
    const-string v8, "com.ongram.provider"

    invoke-static {p1, v8, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    :goto_7b
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 1642
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7f
    const-string v8, "text/plain"

    goto :goto_60

    .line 1644
    :cond_82
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v7, :cond_8d

    move-object v8, v7

    :goto_89
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_63

    :cond_8d
    const-string v8, "text/plain"

    goto :goto_89

    .line 1653
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_90
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7b

    .line 1658
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9a
    invoke-virtual {p1, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_9
.end method

.method private static registerLoginContentObserver(ZLjava/lang/String;)V
    .registers 7
    .param p0, "shouldRegister"    # Z
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 784
    if-eqz p0, :cond_2d

    .line 785
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_8

    .line 826
    :cond_7
    :goto_7
    return-void

    .line 788
    :cond_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities$2;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v3, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 803
    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$3;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/AndroidUtilities$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 811
    :cond_2d
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_7

    .line 814
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 815
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 816
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->unregisterRunnable:Ljava/lang/Runnable;

    .line 819
    :cond_3c
    :try_start_3c
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_4a
    .catchall {:try_start_3c .. :try_end_47} :catchall_4e

    .line 823
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    goto :goto_7

    .line 820
    :catch_4a
    move-exception v0

    .line 823
    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    goto :goto_7

    :catchall_4e
    move-exception v0

    sput-object v2, Lorg/telegram/messenger/AndroidUtilities;->callLogContentObserver:Landroid/database/ContentObserver;

    throw v0
.end method

.method public static removeAdjustResize(Landroid/app/Activity;I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 270
    if-eqz p0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 276
    :cond_8
    :goto_8
    return-void

    .line 273
    :cond_9
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    if-ne v0, p1, :cond_8

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_8
.end method

.method public static removeLoginPhoneCall(Ljava/lang/String;Z)V
    .registers 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "first"    # Z

    .prologue
    .line 829
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->hasCallPermissions:Z

    if-nez v0, :cond_5

    .line 862
    :cond_4
    :goto_4
    return-void

    .line 832
    :cond_5
    const/4 v6, 0x0

    .line 834
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_6
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const-string v3, "type IN (3,1,5)"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 840
    const/4 v9, 0x0

    .line 841
    .local v9, "removed":Z
    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 842
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 843
    .local v8, "phone":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 844
    :cond_3c
    const/4 v9, 0x1

    .line 845
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 848
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 845
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    .end local v8    # "phone":Ljava/lang/String;
    :cond_59
    if-nez v9, :cond_61

    if-eqz p1, :cond_61

    .line 853
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->registerLoginContentObserver(ZLjava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_61} :catch_67
    .catchall {:try_start_6 .. :try_end_61} :catchall_71

    .line 858
    :cond_61
    if-eqz v6, :cond_4

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 855
    .end local v9    # "removed":Z
    :catch_67
    move-exception v7

    .line 856
    .local v7, "e":Ljava/lang/Exception;
    :try_start_68
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_71

    .line 858
    if-eqz v6, :cond_4

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 858
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_71
    move-exception v0

    if-eqz v6, :cond_77

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v0
.end method

.method public static replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1136
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static replaceTags(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .prologue
    const/4 v9, -0x1

    .line 1143
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_34

    .line 1145
    :goto_a
    const-string v7, "<br>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "start":I
    if-eq v5, v9, :cond_24

    .line 1146
    add-int/lit8 v7, v5, 0x4

    const-string v8, "\n"

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 1170
    .end local v5    # "start":I
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1a
    move-exception v2

    .line 1171
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1173
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_23
    return-object v4

    .line 1148
    .restart local v5    # "start":I
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_24
    :goto_24
    :try_start_24
    const-string v7, "<br/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_34

    .line 1149
    add-int/lit8 v7, v5, 0x5

    const-string v8, "\n"

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1152
    .end local v5    # "start":I
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v1, "bolds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_70

    .line 1154
    :goto_3d
    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "start":I
    if-eq v5, v9, :cond_70

    .line 1155
    add-int/lit8 v7, v5, 0x3

    const-string v8, ""

    invoke-virtual {v6, v5, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1157
    .local v3, "end":I
    if-ne v3, v9, :cond_5a

    .line 1158
    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1160
    :cond_5a
    add-int/lit8 v7, v3, 0x4

    const-string v8, ""

    invoke-virtual {v6, v3, v7, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1165
    .end local v3    # "end":I
    .end local v5    # "start":I
    :cond_70
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1166
    .local v4, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v0, v7, :cond_23

    .line 1167
    new-instance v8, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0x21

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_a8} :catch_1a

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_76
.end method

.method public static requestAdjustResize(Landroid/app/Activity;I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "classGuid"    # I

    .prologue
    .line 262
    if-eqz p0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    :cond_8
    :goto_8
    return-void

    .line 265
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 266
    sput p1, Lorg/telegram/messenger/AndroidUtilities;->adjustOwnerClassGuid:I

    goto :goto_8
.end method

.method private static rgbToHsv(III)[D
    .registers 25
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 196
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v14, v18, v20

    .line 197
    .local v14, "rf":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v6, v18, v20

    .line 198
    .local v6, "gf":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v2, v18, v20

    .line 199
    .local v2, "bf":D
    cmpl-double v18, v14, v6

    if-lez v18, :cond_5b

    cmpl-double v18, v14, v2

    if-lez v18, :cond_5b

    move-wide v10, v14

    .line 200
    .local v10, "max":D
    :goto_2d
    cmpg-double v18, v14, v6

    if-gez v18, :cond_63

    cmpg-double v18, v14, v2

    if-gez v18, :cond_63

    move-wide v12, v14

    .line 202
    .local v12, "min":D
    :goto_36
    sub-double v4, v10, v12

    .line 203
    .local v4, "d":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_6b

    const-wide/16 v16, 0x0

    .line 204
    .local v16, "s":D
    :goto_40
    cmpl-double v18, v10, v12

    if-nez v18, :cond_6e

    .line 205
    const-wide/16 v8, 0x0

    .line 216
    .local v8, "h":D
    :goto_46
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v8, v18, v19

    const/16 v19, 0x1

    aput-wide v16, v18, v19

    const/16 v19, 0x2

    aput-wide v10, v18, v19

    return-object v18

    .line 199
    .end local v4    # "d":D
    .end local v8    # "h":D
    .end local v10    # "max":D
    .end local v12    # "min":D
    .end local v16    # "s":D
    :cond_5b
    cmpl-double v18, v6, v2

    if-lez v18, :cond_61

    move-wide v10, v6

    goto :goto_2d

    :cond_61
    move-wide v10, v2

    goto :goto_2d

    .line 200
    .restart local v10    # "max":D
    :cond_63
    cmpg-double v18, v6, v2

    if-gez v18, :cond_69

    move-wide v12, v6

    goto :goto_36

    :cond_69
    move-wide v12, v2

    goto :goto_36

    .line 203
    .restart local v4    # "d":D
    .restart local v12    # "min":D
    :cond_6b
    div-double v16, v4, v10

    goto :goto_40

    .line 207
    .restart local v16    # "s":D
    :cond_6e
    cmpl-double v18, v14, v6

    if-lez v18, :cond_8f

    cmpl-double v18, v14, v2

    if-lez v18, :cond_8f

    .line 208
    sub-double v18, v6, v2

    div-double v20, v18, v4

    cmpg-double v18, v6, v2

    if-gez v18, :cond_8c

    const/16 v18, 0x6

    :goto_80
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v20, v18

    .line 214
    .restart local v8    # "h":D
    :goto_87
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v8, v8, v18

    goto :goto_46

    .line 208
    .end local v8    # "h":D
    :cond_8c
    const/16 v18, 0x0

    goto :goto_80

    .line 209
    :cond_8f
    cmpl-double v18, v6, v2

    if-lez v18, :cond_9c

    .line 210
    sub-double v18, v2, v14

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_87

    .line 212
    .end local v8    # "h":D
    :cond_9c
    sub-double v18, v14, v6

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_87
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 637
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 638
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .registers 6
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 641
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 642
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    :goto_b
    return-void

    .line 644
    :cond_c
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public static setDarkColor(II)I
    .registers 9
    .param p0, "color"    # I
    .param p1, "factor"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xff

    .line 1715
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1716
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int v3, v6, p1

    .line 1717
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int v2, v6, p1

    .line 1718
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int v1, v6, p1

    .line 1719
    .local v1, "blue":I
    if-gez p1, :cond_2d

    .line 1720
    if-le v3, v5, :cond_1e

    move v3, v5

    .line 1721
    :cond_1e
    if-le v2, v5, :cond_21

    move v2, v5

    .line 1722
    :cond_21
    if-le v1, v5, :cond_24

    move v1, v5

    .line 1723
    :cond_24
    if-ne v3, v5, :cond_2d

    if-ne v2, v5, :cond_2d

    if-ne v1, v5, :cond_2d

    .line 1724
    move v3, p1

    .line 1725
    move v2, p1

    .line 1726
    move v1, p1

    .line 1729
    :cond_2d
    if-lez p1, :cond_41

    .line 1730
    if-gez v3, :cond_32

    move v3, v4

    .line 1731
    :cond_32
    if-gez v2, :cond_35

    move v2, v4

    .line 1732
    :cond_35
    if-gez v1, :cond_38

    move v1, v4

    .line 1733
    :cond_38
    if-nez v3, :cond_41

    if-nez v2, :cond_41

    if-nez v1, :cond_41

    .line 1734
    move v3, p1

    .line 1735
    move v2, p1

    .line 1736
    move v1, p1

    .line 1740
    :cond_41
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static setMyLayerVersion(II)I
    .registers 3
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 629
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/2addr v0, p1

    return v0
.end method

.method public static setPeerLayerVersion(II)I
    .registers 4
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 633
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V
    .registers 14
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "rotation"    # I
    .param p4, "align"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    const/16 v8, 0x10e

    const/16 v7, 0x5a

    const/4 v6, 0x0

    .line 1666
    if-eq p3, v7, :cond_9

    if-ne p3, v8, :cond_4d

    .line 1667
    :cond_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v0, v4, v5

    .line 1668
    .local v0, "sx":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v1, v4, v5

    .line 1673
    .local v1, "sy":F
    :goto_1d
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    if-eq p4, v4, :cond_26

    .line 1674
    cmpl-float v4, v0, v1

    if-lez v4, :cond_62

    .line 1675
    move v0, v1

    .line 1680
    :cond_26
    :goto_26
    iget v4, p1, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    mul-float v2, v4, v0

    .line 1681
    .local v2, "tx":F
    iget v4, p1, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    mul-float v3, v4, v1

    .line 1683
    .local v3, "ty":F
    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1684
    if-ne p3, v7, :cond_64

    .line 1685
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1686
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p0, v6, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1695
    :cond_46
    :goto_46
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1696
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1697
    return-void

    .line 1670
    .end local v0    # "sx":F
    .end local v1    # "sy":F
    .end local v2    # "tx":F
    .end local v3    # "ty":F
    :cond_4d
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v0, v4, v5

    .line 1671
    .restart local v0    # "sx":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v1, v4, v5

    .restart local v1    # "sy":F
    goto :goto_1d

    .line 1677
    :cond_62
    move v1, v0

    goto :goto_26

    .line 1687
    .restart local v2    # "tx":F
    .restart local v3    # "ty":F
    :cond_64
    const/16 v4, 0xb4

    if-ne p3, v4, :cond_7b

    .line 1688
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1689
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_46

    .line 1690
    :cond_7b
    if-ne p3, v8, :cond_46

    .line 1691
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1692
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_46
.end method

.method public static setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V
    .registers 8
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .param p1, "color"    # I

    .prologue
    .line 1089
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_34

    .line 1091
    :try_start_6
    const-class v4, Landroid/widget/ScrollView;

    const-string v5, "mEdgeGlowTop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1092
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1093
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EdgeEffect;

    .line 1094
    .local v3, "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    if-eqz v3, :cond_1d

    .line 1095
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 1098
    :cond_1d
    const-class v4, Landroid/widget/ScrollView;

    const-string v5, "mEdgeGlowBottom"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1099
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1100
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1101
    .local v2, "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_34

    .line 1102
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    .line 1108
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    .end local v3    # "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    :cond_34
    :goto_34
    return-void

    .line 1104
    :catch_35
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method public static setViewPagerEdgeEffectColor(Landroid/support/v4/view/ViewPager;I)V
    .registers 9
    .param p0, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p1, "color"    # I

    .prologue
    .line 1057
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_5c

    .line 1059
    :try_start_6
    const-class v5, Landroid/support/v4/view/ViewPager;

    const-string v6, "mLeftEdge"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1060
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1061
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1062
    .local v3, "mLeftEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    if-eqz v3, :cond_31

    .line 1063
    const-class v5, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string v6, "mEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1064
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1065
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1066
    .local v2, "mEdgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_31

    .line 1067
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 1071
    .end local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    :cond_31
    const-class v5, Landroid/support/v4/view/ViewPager;

    const-string v6, "mRightEdge"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1072
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1073
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1074
    .local v4, "mRightEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    if-eqz v4, :cond_5c

    .line 1075
    const-class v5, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string v6, "mEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1076
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1077
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 1078
    .restart local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_5c

    .line 1079
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_5d

    .line 1086
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mEdgeEffect":Landroid/widget/EdgeEffect;
    .end local v3    # "mLeftEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v4    # "mRightEdge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_5c
    :goto_5c
    return-void

    .line 1082
    :catch_5d
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

.method public static setWaitingForCall(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 475
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_3
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForCall:Z

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static setWaitingForSms(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 461
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_3
    sput-boolean p0, Lorg/telegram/messenger/AndroidUtilities;->waitingForSms:Z

    .line 463
    monitor-exit v1

    .line 464
    return-void

    .line 463
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static shakeView(Landroid/view/View;FI)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1186
    const/4 v1, 0x6

    if-ne p2, v1, :cond_a

    .line 1187
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1200
    :goto_9
    return-void

    .line 1190
    :cond_a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1191
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string v2, "translationX"

    new-array v3, v3, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1192
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1193
    new-instance v1, Lorg/telegram/messenger/AndroidUtilities$4;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/AndroidUtilities$4;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1199
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 481
    if-nez p0, :cond_3

    .line 490
    :goto_2
    return-void

    .line 485
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_2

    .line 487
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_14
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static uninstallShortcut(J)V
    .registers 6
    .param p0, "did"    # J

    .prologue
    .line 987
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p0, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->createShortcutIntent(JZ)Landroid/content/Intent;

    move-result-object v0

    .line 988
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 993
    .end local v0    # "addIntent":Landroid/content/Intent;
    :goto_f
    return-void

    .line 990
    :catch_10
    move-exception v1

    .line 991
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v2, -0xa

    .line 374
    if-nez p0, :cond_5

    .line 385
    :cond_4
    :goto_4
    return-void

    .line 378
    :cond_5
    :try_start_5
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    if-eq v1, v2, :cond_4

    .line 379
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 380
    const/16 v1, -0xa

    sput v1, Lorg/telegram/messenger/AndroidUtilities;->prevOrientation:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    .line 382
    :catch_13
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static unregisterUpdates()V
    .registers 1

    .prologue
    .line 1267
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_7

    .line 1268
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->unregister()V

    .line 1270
    :cond_7
    return-void
.end method
