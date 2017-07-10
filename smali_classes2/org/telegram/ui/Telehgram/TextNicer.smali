.class public Lorg/telegram/ui/Telehgram/TextNicer;
.super Ljava/lang/Object;
.source "TextNicer.java"


# static fields
.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lista:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static other_ki:Ljava/lang/String;

.field private static other_km:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->lista:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Change_name1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_210

    .line 211
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 212
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 213
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 214
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06d2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 215
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 216
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 218
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 220
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 221
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 222
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06cc\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 223
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 224
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0644\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 225
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 226
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0636\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 227
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 228
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062b\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 229
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 230
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0642\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 231
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 232
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0641\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 233
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 234
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u063a\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 235
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 236
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0639\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 237
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 238
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062e\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 239
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 240
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062c\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 241
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 242
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0686\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 243
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 244
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0628\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 245
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 246
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0633\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 247
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 248
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 249
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 250
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06af\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 251
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 252
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u067e\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 253
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 254
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0645\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 255
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 256
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062a\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 257
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 258
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0634\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 259
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 260
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0646\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 261
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 262
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0637\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 263
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 264
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062d\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 265
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 266
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0638\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 267
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 268
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0635\u0640\u0640"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 270
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 274
    :cond_210
    return-object p0
.end method

.method public static Change_name2(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_210

    .line 280
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 281
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 282
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 283
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06d2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 284
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 285
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u06aa\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 287
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 289
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 290
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 291
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06cc\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 292
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 293
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0644\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 294
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 295
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0636\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 296
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 297
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u062b\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 298
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 299
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0642\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 300
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 301
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0641\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 302
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 303
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u063a\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 304
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 305
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0639\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 306
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 307
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u062e\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 308
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 309
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u062c\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 310
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 311
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0686\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 312
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 313
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0628\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 314
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 315
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0633\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 316
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 317
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u06aa\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 318
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 319
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u06af\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 320
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 321
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u067e\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 322
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 323
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0645\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 324
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 325
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u062a\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 326
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 327
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0634\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 328
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 329
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0646\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 330
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 331
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0637\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 332
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 333
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u062d\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 334
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 335
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0638\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 336
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 337
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0344\u0635\u0344\u0640\u0344\u0640\u0344"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 339
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 343
    :cond_210
    return-object p0
.end method

.method public static Change_name3(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_3b2

    .line 349
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 350
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_1de

    .line 351
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 352
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06d2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 353
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 354
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 355
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 356
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 357
    :cond_4b
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 358
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 359
    :cond_5d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 360
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 361
    :cond_6f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 362
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 363
    :cond_81
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 364
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 365
    :cond_93
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 366
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 367
    :cond_a5
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 368
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 369
    :cond_b8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 370
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 371
    :cond_cb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 372
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 373
    :cond_de
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 374
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 375
    :cond_f1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 376
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 377
    :cond_104
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 378
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 379
    :cond_117
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 380
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 381
    :cond_12a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 382
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 383
    :cond_13d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    .line 384
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 385
    :cond_150
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    .line 386
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 387
    :cond_163
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 388
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 389
    :cond_176
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 390
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 391
    :cond_189
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 392
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 393
    :cond_19c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 394
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 395
    :cond_1af
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 396
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 397
    :cond_1c2
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 398
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 400
    :cond_1d5
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 402
    :cond_1de
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 403
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 404
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u06cc\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 405
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 406
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0644\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 407
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 408
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0636\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 409
    :cond_21a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 410
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u062b\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 411
    :cond_22d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_240

    .line 412
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0642\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 413
    :cond_240
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 414
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0641\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 415
    :cond_253
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_266

    .line 416
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u063a\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 417
    :cond_266
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 418
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0639\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 419
    :cond_279
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28c

    .line 420
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u062e\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 421
    :cond_28c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 422
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u062c\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 423
    :cond_29f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 424
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0686\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 425
    :cond_2b2
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 426
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0628\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 427
    :cond_2c5
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d8

    .line 428
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0633\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 429
    :cond_2d8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2eb

    .line 430
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u06aa\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 431
    :cond_2eb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 432
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u06af\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 433
    :cond_2fe
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_311

    .line 434
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u067e\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 435
    :cond_311
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_324

    .line 436
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0645\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 437
    :cond_324
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_337

    .line 438
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u062a\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 439
    :cond_337
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34a

    .line 440
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0634\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 441
    :cond_34a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 442
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0646\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 443
    :cond_35d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_370

    .line 444
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0637\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 445
    :cond_370
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_383

    .line 446
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u062d\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 447
    :cond_383
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_396

    .line 448
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0638\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 449
    :cond_396
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a9

    .line 450
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0336\u0336\u0635\u0336\u0336\u0640\u0336\u0336\u0640\u0336\u0336"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 452
    :cond_3a9
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 456
    :cond_3b2
    return-object p0
.end method

.method public static Change_name4(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_210

    .line 462
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 463
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 464
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 465
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06d2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 466
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 467
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u06aa\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 469
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 471
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 472
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 473
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u06cc\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 474
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 475
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0644\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 476
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 477
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0636\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 478
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 479
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u062b\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 480
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 481
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0642\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 482
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 483
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0641\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 484
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 485
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u063a\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 486
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 487
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0639\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 488
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 489
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u062e\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 490
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 491
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u062c\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 492
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 493
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0686\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 494
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 495
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0628\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 496
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 497
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0633\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 498
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 499
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u06aa\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 500
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 501
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u06af\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 502
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 503
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u067e\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 504
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 505
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0645\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 506
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 507
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u062a\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 508
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 509
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0634\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 510
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 511
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0646\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 512
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 513
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0637\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 514
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 515
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u062d\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 516
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 517
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0638\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 518
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 519
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0305\u0305\u0635\u0305\u0305\u0640\u0305\u0305\u0640\u0305\u0305"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 521
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 525
    :cond_210
    return-object p0
.end method

.method public static Change_name5(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_210

    .line 531
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 532
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 533
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 534
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u06d2\u0311\u0650"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 535
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 536
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u06aa\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 538
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 540
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 541
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 542
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u06cc\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 543
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 544
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0644\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 545
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 546
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0636\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 547
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 548
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u062b\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 549
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 550
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0642\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 551
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 552
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0641\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 553
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 554
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u063a\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 555
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 556
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0639\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 557
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 558
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u062e\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 559
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 560
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u062c\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 561
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 562
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0686\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 563
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 564
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0628\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 565
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 566
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0633\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 567
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 568
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u06aa\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 569
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 570
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u06af\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 571
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 572
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u067e\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 573
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 574
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0645\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 575
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 576
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u062a\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 577
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 578
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0634\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 579
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 580
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0646\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 581
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 582
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0637\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 583
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 584
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u062d\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 585
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 586
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0638\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 587
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 588
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0311\u0635\u0311\u0311\u0640\u0311\u0311\u0640\u0311"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 590
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 594
    :cond_210
    return-object p0
.end method

.method public static Change_name6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 598
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_2ce

    .line 600
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 601
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 602
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 603
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0640\u0640\u06d2\u0650"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 604
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 605
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 607
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 609
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 610
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 611
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 612
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 613
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 614
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 615
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 616
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 617
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 618
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 619
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06fb"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 620
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 621
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 622
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 623
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 624
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 625
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 626
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 627
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 628
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 629
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06a3"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 630
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 631
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 632
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 633
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 634
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 635
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 636
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 637
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0684"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 638
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 639
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 640
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 641
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 642
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 643
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 644
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 645
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u076a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 646
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 647
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 648
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 649
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 650
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 651
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 652
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 653
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06b3"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 654
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 655
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0680"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 656
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 657
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0694"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 658
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 659
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06c5"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 660
    :cond_21a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    .line 661
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0766"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 662
    :cond_22d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_240

    .line 663
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u067c"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 664
    :cond_240
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 665
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 666
    :cond_253
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_266

    .line 667
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06fa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 668
    :cond_266
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_279

    .line 669
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0767"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 670
    :cond_279
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28c

    .line 671
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 672
    :cond_28c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    .line 673
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0681"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 674
    :cond_29f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 675
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 676
    :cond_2b2
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 677
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 679
    :cond_2c5
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 683
    :cond_2ce
    return-object p0
.end method

.method public static Change_name7(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_210

    .line 143
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 144
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_41

    .line 145
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 146
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06d2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 147
    :cond_27
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 148
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 150
    :cond_39
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 152
    :cond_41
    array-length v2, v1

    if-gt v0, v2, :cond_24

    .line 153
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 154
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 155
    :cond_56
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 156
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 157
    :cond_68
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 158
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 159
    :cond_7a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 160
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 161
    :cond_8c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 162
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 163
    :cond_9e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 164
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 165
    :cond_b1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 166
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 167
    :cond_c4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 168
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 169
    :cond_d7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 170
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 171
    :cond_ea
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 172
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 173
    :cond_fd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 174
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 175
    :cond_110
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 176
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 177
    :cond_123
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 178
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 179
    :cond_136
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 180
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06aa"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 181
    :cond_149
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 183
    :cond_15c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 184
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 185
    :cond_16f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 186
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 187
    :cond_182
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 188
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 189
    :cond_195
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 190
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 191
    :cond_1a8
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 192
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 193
    :cond_1bb
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 194
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 195
    :cond_1ce
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 196
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 197
    :cond_1e1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 198
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 199
    :cond_1f4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_207

    .line 200
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 202
    :cond_207
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    .line 206
    :cond_210
    return-object p0
.end method

.method public static Change_name8(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "change_en"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "index":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_3f0

    .line 688
    aget-object v2, v1, v0

    sput-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    .line 689
    array-length v2, v1

    if-gt v0, v2, :cond_22

    .line 690
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 691
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "Q"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 692
    :cond_25
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 693
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03c9"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 694
    :cond_37
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 695
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 696
    :cond_49
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 697
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 698
    :cond_5b
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 699
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 700
    :cond_6d
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 701
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u04b1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 702
    :cond_7f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 703
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "U"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 704
    :cond_91
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 705
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 706
    :cond_a3
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 707
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 708
    :cond_b6
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 709
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 710
    :cond_c9
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 711
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 712
    :cond_dc
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 713
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u015e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 714
    :cond_ef
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 715
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 716
    :cond_102
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 717
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 718
    :cond_115
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 719
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 720
    :cond_128
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 721
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 722
    :cond_13b
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 723
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "J"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 724
    :cond_14e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 725
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 726
    :cond_161
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 727
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 728
    :cond_174
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 729
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03b6"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 730
    :cond_187
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 731
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 732
    :cond_19a
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 733
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 734
    :cond_1ad
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 735
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 736
    :cond_1c0
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 737
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03b2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 738
    :cond_1d3
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 739
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 740
    :cond_1e6
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 741
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 743
    :cond_1f9
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20c

    .line 744
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "q"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 745
    :cond_20c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21f

    .line 746
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03c9"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 747
    :cond_21f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_232

    .line 748
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 749
    :cond_232
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_245

    .line 750
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 751
    :cond_245
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 752
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03c4"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 753
    :cond_258
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26b

    .line 754
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 755
    :cond_26b
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27e

    .line 756
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 757
    :cond_27e
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_291

    .line 758
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 759
    :cond_291
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 760
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "o"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 761
    :cond_2a4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 762
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 763
    :cond_2b7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 764
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u03b1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 765
    :cond_2ca
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dd

    .line 766
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u015f"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 767
    :cond_2dd
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 768
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 769
    :cond_2f0
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_303

    .line 770
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 771
    :cond_303
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_316

    .line 772
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 773
    :cond_316
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_329

    .line 774
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u043d"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 775
    :cond_329
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33c

    .line 776
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "j"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 777
    :cond_33c
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 778
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "\u043a"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 779
    :cond_34f
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 780
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "l"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 781
    :cond_362
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_375

    .line 782
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "z"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 783
    :cond_375
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_388

    .line 784
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 785
    :cond_388
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39b

    .line 786
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 787
    :cond_39b
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ae

    .line 788
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 789
    :cond_3ae
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    .line 790
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 791
    :cond_3c1
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d4

    .line 792
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 793
    :cond_3d4
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->other_ki:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e7

    .line 794
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 796
    :cond_3e7
    sget-object v2, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 800
    :cond_3f0
    return-object p0
.end method

.method public static Splator(Ljava/lang/String;)V
    .registers 7
    .param p0, "splator"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "indexm":[Ljava/lang/String;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 88
    .local v1, "str":Ljava/lang/String;
    sput-object v1, Lorg/telegram/ui/Telehgram/TextNicer;->other_km:Ljava/lang/String;

    .line 89
    sget-object v4, Lorg/telegram/ui/Telehgram/TextNicer;->lista:Ljava/util/ArrayList;

    sget-object v5, Lorg/telegram/ui/Telehgram/TextNicer;->other_km:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 91
    .end local v1    # "str":Ljava/lang/String;
    :cond_18
    return-void
.end method

.method public static arraysplator(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 14
    .param p0, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 94
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 95
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "nicewrite"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 96
    .local v3, "nicerMode":I
    const-string v6, "setbooleanch"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    .local v1, "hasNotEmoji":Z
    const-string v6, "setspacecharachter"

    const-string v7, "\u2764"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "emoji":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1a8

    .line 100
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    .local v5, "s":Ljava/lang/String;
    const-string v6, "\u061f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "\u060c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 102
    :cond_9e
    if-ne v3, v8, :cond_a7

    .line 103
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_22

    .line 104
    :cond_a7
    if-ne v3, v10, :cond_ad

    .line 105
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 106
    :cond_ad
    if-ne v3, v11, :cond_b3

    .line 107
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 108
    :cond_b3
    if-ne v3, v12, :cond_b9

    .line 109
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 110
    :cond_b9
    const/4 v6, 0x5

    if-ne v3, v6, :cond_c0

    .line 111
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 112
    :cond_c0
    const/4 v6, 0x6

    if-ne v3, v6, :cond_c7

    .line 113
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name6(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 114
    :cond_c7
    const/4 v6, 0x7

    if-ne v3, v6, :cond_ce

    .line 115
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name7(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 116
    :cond_ce
    const/16 v6, 0x8

    if-ne v3, v6, :cond_a3

    .line 117
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name8(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 119
    :cond_d6
    if-ne v3, v8, :cond_ef

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 121
    :cond_ef
    if-ne v3, v10, :cond_108

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 123
    :cond_108
    if-ne v3, v11, :cond_121

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a3

    .line 125
    :cond_121
    if-ne v3, v12, :cond_13b

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a3

    .line 127
    :cond_13b
    const/4 v6, 0x5

    if-ne v3, v6, :cond_156

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a3

    .line 129
    :cond_156
    const/4 v6, 0x6

    if-ne v3, v6, :cond_171

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name6(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a3

    .line 131
    :cond_171
    const/4 v6, 0x7

    if-ne v3, v6, :cond_18c

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name7(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a3

    .line 133
    :cond_18c
    const/16 v6, 0x8

    if-ne v3, v6, :cond_a3

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Telehgram/TextNicer;->Change_name8(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a3

    .line 137
    .end local v5    # "s":Ljava/lang/String;
    :cond_1a8
    return-object p0
.end method

.method public static clean()V
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    sget-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->lista:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    return-void
.end method

.method public static getList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getLista()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lorg/telegram/ui/Telehgram/TextNicer;->lista:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Lorg/telegram/ui/ChatActivity;)V
    .registers 10
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    if-eqz p0, :cond_97

    if-eqz p1, :cond_97

    .line 36
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 37
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 39
    const-string v4, "TextNicerStyle"

    const v5, 0x7f0707f1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 40
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 41
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const/16 v4, 0x8

    new-array v2, v4, [Ljava/lang/CharSequence;

    const-string v4, "Normal"

    const v5, 0x7f070773

    .line 42
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "nicer1"

    const v5, 0x7f070885

    .line 43
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "nicer2"

    const v6, 0x7f070886

    .line 44
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "nicer3"

    const v6, 0x7f070887

    .line 45
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "nicer4"

    const v6, 0x7f070888

    .line 46
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "nicer5"

    const v6, 0x7f070889

    .line 47
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "nicer6"

    const v6, 0x7f07088a

    .line 48
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "nicer6"

    const v6, 0x7f07088b

    .line 49
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 50
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v4, Lorg/telegram/ui/Telehgram/TextNicer$1;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Telehgram/TextNicer$1;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 81
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 83
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_97
    return-void
.end method
