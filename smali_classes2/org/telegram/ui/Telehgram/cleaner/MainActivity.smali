.class public Lorg/telegram/ui/Telehgram/cleaner/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/cleaner/MainActivity$AsyncCaller;
    }
.end annotation


# static fields
.field static final cache_dir:Ljava/io/File;

.field static final dir:Ljava/io/File;

.field static final dirs:[Ljava/lang/String;

.field static final telegramAudio_dir:Ljava/io/File;

.field static final telegramDocument_dir:Ljava/io/File;

.field static final telegramImages_dir:Ljava/io/File;

.field static final telegramVideo_dir:Ljava/io/File;


# instance fields
.field Delete_view:Landroid/view/View;

.field actionBar:Landroid/support/v7/app/ActionBar;

.field cacheText:Landroid/widget/TextView;

.field children:[Ljava/lang/String;

.field clean_all:Landroid/widget/TextView;

.field currentAnimation:Landroid/animation/Animator;

.field drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

.field ivDrawable:Landroid/widget/ImageView;

.field open_cache:Landroid/widget/Button;

.field open_telegram_data:Landroid/widget/Button;

.field sdText:Landroid/widget/TextView;

.field themePrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/Android/data/com.mobotel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/cache/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/cache/"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->dirs:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/Android/data/com.mobotel/cache"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->dir:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.mobotel/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Telegram/Telegram Audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramAudio_dir:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Telegram/Telegram Documents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Telegram/Telegram Images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Telegram/Telegram Video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private SetfileNumbers()V
    .registers 9

    .prologue
    const v7, 0x7f07083e

    const v6, 0x7f070875

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "num":I
    const v2, 0x7f0e009e

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    .line 342
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v4, "chatsMessageColor"

    const v5, -0x707071

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 348
    :try_start_40
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YourCachedFiles"

    const v5, 0x7f07083e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    const v5, 0x7f070875

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_73} :catch_e8

    .line 361
    :cond_73
    :goto_73
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramAudio_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 363
    :try_start_7b
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramAudio_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_15c

    add-int/2addr v1, v2

    .line 368
    :cond_83
    :goto_83
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 370
    :try_start_8b
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_92} :catch_162

    add-int/2addr v1, v2

    .line 375
    :cond_93
    :goto_93
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 377
    :try_start_9b
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a2} :catch_168

    add-int/2addr v1, v2

    .line 382
    :cond_a3
    :goto_a3
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 384
    :try_start_ab
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b2} :catch_16e

    add-int/2addr v1, v2

    .line 389
    :cond_b3
    :goto_b3
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->sdText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YourFilesCount"

    const v5, 0x7f07083f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void

    .line 349
    :catch_e8
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ed
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12a

    .line 353
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 355
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YourCachedFiles"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 357
    :cond_12a
    sget-object v2, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YourCachedFiles"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_73

    .line 364
    :catch_15c
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_83

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_162
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_93

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_168
    move-exception v0

    .line 379
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a3

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_16e
    move-exception v0

    .line 386
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b3
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->prepareStyle1Animation()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->SetfileNumbers()V

    return-void
.end method

.method private prepareStyle1Animation()Landroid/animation/Animator;
    .registers 11

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v6, 0x2

    .line 298
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 300
    .local v0, "animation":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    const-string v4, "progress"

    new-array v5, v6, [F

    fill-array-data v5, :array_3c

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 301
    .local v1, "indeterminateAnimation":Landroid/animation/Animator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 303
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    const-string v4, "circleScale"

    new-array v5, v6, [F

    fill-array-data v5, :array_44

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 304
    .local v2, "innerCircleAnimation":Landroid/animation/Animator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 305
    new-instance v3, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$4;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;Landroid/animation/Animator;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 321
    return-object v0

    .line 300
    :array_3c
    .array-data 4
        0x0
        0x45610000    # 3600.0f
    .end array-data

    .line 303
    :array_44
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method


# virtual methods
.method DeleteRecursive(Ljava/io/File;)V
    .registers 6
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 328
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->DeleteRecursive(Ljava/io/File;)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 330
    .end local v0    # "child":Ljava/io/File;
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 337
    :cond_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, -0x707071

    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->setContentView(I)V

    .line 70
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 71
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    const v2, 0x7f0e00a0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->Delete_view:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const-string v3, "TelegramCleaner"

    const v4, 0x7f0707eb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v3, "themeColor"

    const v4, -0xad8a64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "def":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const v2, 0x7f0e00a2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->clean_all:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->clean_all:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->clean_all:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v4, "chatsMessageColor"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    const v2, 0x7f0e00a1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->ivDrawable:Landroid/widget/ImageView;

    .line 84
    new-instance v2, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;

    invoke-direct {v2}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->setRingWidth(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->setOutlineColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->setRingColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->setCenterColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->create()Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->ivDrawable:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->drawable:Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const v2, 0x7f0e009d

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v4, "chatsMessageColor"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const v2, 0x7f0e00a3

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_cache:Landroid/widget/Button;

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_cache:Landroid/widget/Button;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->SetfileNumbers()V

    .line 97
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cacheText:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_cache:Landroid/widget/Button;

    new-instance v3, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$1;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f0e00a4

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_telegram_data:Landroid/widget/Button;

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_telegram_data:Landroid/widget/Button;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->open_telegram_data:Landroid/widget/Button;

    new-instance v3, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->Delete_view:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 402
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 398
    :pswitch_c
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->finish()V

    .line 399
    const/4 v0, 0x1

    goto :goto_b

    .line 396
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->SetfileNumbers()V

    .line 61
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 62
    const-string v0, "Cleaner Activity"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 64
    return-void
.end method
