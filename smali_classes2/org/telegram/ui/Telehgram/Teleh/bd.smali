.class public Lorg/telegram/ui/Telehgram/Teleh/bd;
.super Ljava/lang/Object;
.source "bd.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .registers 6
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 43
    .local v0, "var1":I
    :goto_f
    return v0

    .line 39
    .end local v0    # "var1":I
    :catch_10
    move-exception v1

    .line 40
    .local v1, "var2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    .restart local v0    # "var1":I
    goto :goto_f
.end method

.method public static a(II)Ljava/lang/String;
    .registers 6
    .param p0, "var0"    # I
    .param p1, "var1"    # I

    .prologue
    .line 47
    new-array v0, p1, [C

    .line 48
    .local v0, "var2":[C
    const/16 v1, 0x30

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 49
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .param p0, "var0"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    new-instance v1, Lorg/telegram/ui/Telehgram/SolarCalendar;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Telehgram/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getShortDesDate()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8
    .param p0, "var0"    # [B

    .prologue
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v4, "var5":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_9
    array-length v5, p0

    if-ge v0, v5, :cond_4b

    .line 66
    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "var4":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 68
    .local v1, "var2":I
    move-object v2, v3

    .line 69
    .local v2, "var3":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2d

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_2d
    move-object v3, v2

    .line 74
    const/4 v5, 0x2

    if-le v1, v5, :cond_37

    .line 75
    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_37
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_48

    .line 80
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 84
    .end local v1    # "var2":I
    .end local v2    # "var3":Ljava/lang/String;
    .end local v3    # "var4":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "var0"    # Landroid/content/Context;
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, "var2":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 94
    .local v2, "var4":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 99
    :goto_9
    return v0

    .line 95
    :catch_a
    move-exception v1

    .line 96
    .local v1, "var3":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b()Ljava/io/File;
    .registers 4

    .prologue
    .line 103
    const-class v3, Lorg/telegram/ui/Telehgram/Teleh/bd;

    monitor-enter v3

    :try_start_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_36

    .line 107
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "var0":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hanista"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "var1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_35

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_39

    .line 116
    :cond_35
    return-object v1

    .line 103
    .end local v0    # "var0":Ljava/lang/StringBuilder;
    .end local v1    # "var1":Ljava/io/File;
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2

    .line 113
    .restart local v0    # "var0":Ljava/lang/StringBuilder;
    :catchall_39
    move-exception v2

    throw v2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 127
    .local v1, "var2":Ljava/lang/String;
    :goto_f
    return-object v1

    .line 123
    .end local v1    # "var2":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 124
    .local v0, "var1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    .restart local v1    # "var2":Ljava/lang/String;
    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 133
    const/4 v0, 0x0

    .line 138
    .local v0, "var1":Z
    :goto_9
    return v0

    .line 135
    .end local v0    # "var1":Z
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "var1":Z
    goto :goto_9
.end method

.method public static c()Ljava/io/File;
    .registers 3

    .prologue
    .line 143
    const-class v2, Lorg/telegram/ui/Telehgram/Teleh/bd;

    monitor-enter v2

    .line 144
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "externalStorageDirectory":Ljava/io/File;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_16

    .line 146
    const/4 v0, 0x0

    .line 148
    :cond_16
    monitor-exit v2

    .line 149
    return-object v0

    .line 148
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [C

    .line 159
    .local v3, "var4":[C
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 162
    .local v1, "var2":C
    const/16 v4, 0x660

    if-lt v1, v4, :cond_21

    const/16 v4, 0x669

    if-gt v1, v4, :cond_21

    .line 163
    add-int/lit16 v4, v1, -0x630

    int-to-char v0, v4

    .line 174
    .local v0, "var1":C
    :cond_1c
    :goto_1c
    aput-char v0, v3, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 165
    .end local v0    # "var1":C
    :cond_21
    move v0, v1

    .line 166
    .restart local v0    # "var1":C
    const/16 v4, 0x6f0

    if-lt v1, v4, :cond_1c

    .line 167
    move v0, v1

    .line 168
    const/16 v4, 0x6f9

    if-gt v1, v4, :cond_1c

    .line 169
    add-int/lit16 v4, v1, -0x6c0

    int-to-char v0, v4

    goto :goto_1c

    .line 177
    .end local v0    # "var1":C
    .end local v1    # "var2":C
    :cond_2f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 181
    const-string v0, "com.hanista.mobogram"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 4
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "var1":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bazaar://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 191
    const-string v0, "com.hanista.mobogram.two"

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 197
    .local v1, "var2":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 198
    const/4 v0, 0x1

    .line 203
    .local v0, "var1":Z
    :goto_15
    return v0

    .line 200
    .end local v0    # "var1":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "var1":Z
    goto :goto_15
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .registers 3
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "var1":Landroid/content/Intent;
    const-string v1, "http://www.hanista.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 6
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 217
    const/4 v0, 0x1

    .line 218
    .local v0, "var1":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 221
    .local v1, "var2":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-static {p0}, Lorg/telegram/ui/Telehgram/Teleh/bd;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    .line 226
    :goto_d
    return v0

    .line 222
    :catch_e
    move-exception v2

    .line 223
    .local v2, "var3":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 3
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 236
    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->e()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "var1":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 238
    .end local v0    # "var1":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "var1":Ljava/lang/String;
    goto :goto_12
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 2
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 4
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-static {p0}, Lorg/telegram/ui/Telehgram/Teleh/bd;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "13:AD:93:96:94:26:2A:DE:5A:23:ED:F3:6E:AA:E3:53:83:DB:2B:EE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 251
    const/4 v0, 0x1

    .line 256
    .local v0, "var1":Z
    :goto_d
    return v0

    .line 253
    .end local v0    # "var1":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "var1":Z
    goto :goto_d
.end method

.method public static m(Landroid/content/Context;)Z
    .registers 8
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 260
    const/4 v1, 0x1

    .line 261
    .local v1, "var2":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 265
    .local v4, "var4":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_10} :catch_18

    .line 271
    .local v0, "var1":I
    const v5, 0x1190f

    if-ge v0, v5, :cond_16

    .line 272
    const/4 v1, 0x0

    :cond_16
    move v2, v1

    .line 275
    .end local v0    # "var1":I
    .end local v1    # "var2":Z
    .local v2, "var2":I
    :goto_17
    return v2

    .line 266
    .end local v2    # "var2":I
    .restart local v1    # "var2":Z
    :catch_18
    move-exception v3

    .line 267
    .local v3, "var3":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    move v2, v1

    .line 268
    .restart local v2    # "var2":I
    goto :goto_17
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p0, "var0"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 280
    .local v9, "var7":Landroid/content/pm/PackageManager;
    invoke-static {}, Lorg/telegram/ui/Telehgram/Teleh/bd;->d()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "var1":Ljava/lang/String;
    const/16 v13, 0x40

    :try_start_a
    invoke-virtual {v9, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_3c

    move-result-object v12

    .line 291
    .local v12, "var9":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 295
    .local v1, "var10":Ljava/io/ByteArrayInputStream;
    :try_start_1c
    const-string v13, "X509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_21
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_21} :catch_41

    move-result-object v2

    .line 303
    .local v2, "var11":Ljava/security/cert/CertificateFactory;
    :try_start_22
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_28
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_28} :catch_46

    .line 310
    .local v3, "var12":Ljava/security/cert/X509Certificate;
    :try_start_28
    const-string v13, "SHA1"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a([B)Ljava/lang/String;
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_28 .. :try_end_39} :catch_4b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_28 .. :try_end_39} :catch_4f

    move-result-object v10

    .local v10, "var8":Ljava/lang/String;
    :goto_3a
    move-object v11, v10

    .line 317
    .end local v1    # "var10":Ljava/io/ByteArrayInputStream;
    .end local v2    # "var11":Ljava/security/cert/CertificateFactory;
    .end local v3    # "var12":Ljava/security/cert/X509Certificate;
    .end local v10    # "var8":Ljava/lang/String;
    .end local v12    # "var9":Landroid/content/pm/PackageInfo;
    .local v11, "var8":Ljava/lang/String;
    :goto_3b
    return-object v11

    .line 286
    .end local v11    # "var8":Ljava/lang/String;
    :catch_3c
    move-exception v8

    .line 287
    .local v8, "var6":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "invalid"

    .restart local v10    # "var8":Ljava/lang/String;
    move-object v11, v10

    .line 288
    .end local v10    # "var8":Ljava/lang/String;
    .restart local v11    # "var8":Ljava/lang/String;
    goto :goto_3b

    .line 296
    .end local v8    # "var6":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "var8":Ljava/lang/String;
    .restart local v1    # "var10":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "var9":Landroid/content/pm/PackageInfo;
    :catch_41
    move-exception v7

    .line 297
    .local v7, "var5":Ljava/security/cert/CertificateException;
    const-string v10, "invalid"

    .restart local v10    # "var8":Ljava/lang/String;
    move-object v11, v10

    .line 298
    .end local v10    # "var8":Ljava/lang/String;
    .restart local v11    # "var8":Ljava/lang/String;
    goto :goto_3b

    .line 304
    .end local v7    # "var5":Ljava/security/cert/CertificateException;
    .end local v11    # "var8":Ljava/lang/String;
    .restart local v2    # "var11":Ljava/security/cert/CertificateFactory;
    :catch_46
    move-exception v6

    .line 305
    .local v6, "var4":Ljava/security/cert/CertificateException;
    const-string v10, "invalid"

    .restart local v10    # "var8":Ljava/lang/String;
    move-object v11, v10

    .line 306
    .end local v10    # "var8":Ljava/lang/String;
    .restart local v11    # "var8":Ljava/lang/String;
    goto :goto_3b

    .line 311
    .end local v6    # "var4":Ljava/security/cert/CertificateException;
    .end local v11    # "var8":Ljava/lang/String;
    .restart local v3    # "var12":Ljava/security/cert/X509Certificate;
    :catch_4b
    move-exception v4

    .line 312
    .local v4, "var2":Ljava/security/NoSuchAlgorithmException;
    const-string v10, "invalid"

    .line 315
    .restart local v10    # "var8":Ljava/lang/String;
    goto :goto_3a

    .line 313
    .end local v4    # "var2":Ljava/security/NoSuchAlgorithmException;
    .end local v10    # "var8":Ljava/lang/String;
    :catch_4f
    move-exception v5

    .line 314
    .local v5, "var3":Ljava/security/cert/CertificateEncodingException;
    const-string v10, "invalid"

    .restart local v10    # "var8":Ljava/lang/String;
    goto :goto_3a
.end method
