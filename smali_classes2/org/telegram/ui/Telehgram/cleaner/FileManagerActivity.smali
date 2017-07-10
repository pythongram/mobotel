.class public Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;
.super Landroid/app/Activity;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

.field private inputpath:Ljava/lang/String;

.field private item:Lorg/telegram/ui/Telehgram/cleaner/Items;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Telehgram/cleaner/Items;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/GridView;

.field private mFiles:[Ljava/lang/String;

.field private outputpath:Ljava/lang/String;

.field private outputpath2:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private text1:Landroid/widget/TextView;

.field private themePrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->mFiles:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 47
    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/mobotel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->outputpath:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/mobotel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->outputpath2:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Telegram/Images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->inputpath:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.mobotel/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Landroid/widget/GridView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->outputpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "inputFile"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f0708a5

    const/4 v10, 0x1

    .line 240
    const/4 v4, 0x0

    .line 241
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 245
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_14

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 251
    :cond_14
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2a} :catch_86
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_6d

    .line 252
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_2a
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_40} :catch_88
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_7c

    .line 254
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_42
    new-array v0, v9, [B

    .line 256
    .local v0, "buffer":[B
    :goto_44
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_61

    .line 257
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4f} :catch_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_7f

    goto :goto_44

    .line 267
    .end local v0    # "buffer":[B
    .end local v8    # "read":I
    :catch_50
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 268
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .local v3, "fnfe1":Ljava/io/FileNotFoundException;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_53
    const-string v9, "saveFailed"

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 274
    .end local v3    # "fnfe1":Ljava/io/FileNotFoundException;
    :goto_60
    return-void

    .line 259
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_61
    :try_start_61
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_64} :catch_50
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_7f

    .line 260
    const/4 v4, 0x0

    .line 262
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :try_start_65
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 263
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6b} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_83

    .line 264
    const/4 v6, 0x0

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_60

    .line 269
    .end local v0    # "buffer":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v8    # "read":I
    :catch_6d
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    :goto_6e
    const-string v9, "saveFailed"

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_60

    .line 269
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_7c
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_6e

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_7f
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_6e

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_83
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_6e

    .line 267
    .end local v0    # "buffer":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v8    # "read":I
    :catch_86
    move-exception v3

    goto :goto_53

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_88
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_53

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_8b
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_53
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 59
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_f
    return-object v1
.end method


# virtual methods
.method DeleteRecursive(Ljava/io/File;)V
    .registers 8
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    const v5, 0x7f0708a5

    const/4 v4, 0x1

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 226
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 229
    .end local v0    # "child":Ljava/io/File;
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 230
    const-string v1, "saveFailed"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    :goto_2d
    return-void

    .line 233
    :cond_2e
    const-string v1, "saveFailed"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v4, 0x7f03001a

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1b

    .line 78
    const-string v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    .line 81
    :cond_1b
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "theme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->themePrefs:Landroid/content/SharedPreferences;

    .line 82
    const v4, 0x7f0e008e

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->text1:Landroid/widget/TextView;

    .line 83
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->text1:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->text1:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v6, "chatsMessageColor"

    const v7, -0x707071

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    .line 86
    const v4, 0x7f0e008f

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    .line 87
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "f":Ljava/io/File;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Android/data/com.mobotel/cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b0

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Telegram/Images"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 94
    :cond_b0
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$1;-><init>(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, "file":[Ljava/io/File;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bf
    array-length v4, v2

    if-ge v3, v4, :cond_243

    .line 103
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-direct {v4}, Lorg/telegram/ui/Telehgram/cleaner/Items;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 104
    const-string v4, "Files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:///"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->image:Ljava/lang/String;

    .line 106
    const-string v4, "image"

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    .line 109
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 111
    .end local v2    # "file":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_12d
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Telegram/Telegram Video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a6

    .line 112
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$2;-><init>(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 118
    .restart local v2    # "file":[Ljava/io/File;
    const-string v4, "Files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_178
    array-length v4, v2

    if-ge v3, v4, :cond_243

    .line 121
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-direct {v4}, Lorg/telegram/ui/Telehgram/cleaner/Items;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    const-string v5, "drawable://2130837900"

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->image:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 127
    .end local v2    # "file":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_1a6
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Telegram/Telegram Documents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 129
    .restart local v2    # "file":[Ljava/io/File;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 130
    const-string v4, "Files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1ec
    array-length v4, v2

    if-ge v3, v4, :cond_243

    .line 132
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-direct {v4}, Lorg/telegram/ui/Telehgram/cleaner/Items;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    .line 133
    const-string v4, "Files"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "image"

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    .line 136
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    const-string v5, "drawable://2130837779"

    iput-object v5, v4, Lorg/telegram/ui/Telehgram/cleaner/Items;->image:Ljava/lang/String;

    .line 138
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->item:Lorg/telegram/ui/Telehgram/cleaner/Items;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ec

    .line 141
    .end local v2    # "file":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_243
    new-instance v4, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p0}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    .line 142
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->addAll(Ljava/util/Collection;)V

    .line 143
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;->notifyDataSetChanged()V

    .line 144
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->adapter:Lorg/telegram/ui/Telehgram/cleaner/ListViewAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 146
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->listView:Landroid/widget/GridView;

    new-instance v5, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$3;-><init>(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 221
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Telehgram/cleaner/Items;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "newFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Telehgram/cleaner/Items;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    const-string v0, "Cleaner File Manager Activity"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 67
    return-void
.end method
