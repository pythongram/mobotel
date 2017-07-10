.class abstract Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.super Ljava/lang/Object;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ElementParser"
.end annotation


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final normalizedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parent:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    .line 101
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->tag:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    .line 104
    return-void
.end method

.method private newChildParser(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .registers 5
    .param p1, "parent"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v0, "QualityLevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 163
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    .line 169
    :goto_d
    return-object v0

    .line 164
    :cond_e
    const-string v0, "Protection"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 165
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    goto :goto_d

    .line 166
    :cond_1c
    const-string v0, "StreamIndex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 167
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    goto :goto_d

    .line 169
    :cond_2a
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected addChild(Ljava/lang/Object;)V
    .registers 2
    .param p1, "parsedChild"    # Ljava/lang/Object;

    .prologue
    .line 241
    return-void
.end method

.method protected abstract build()Ljava/lang/Object;
.end method

.method protected final getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 196
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 197
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 198
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 201
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1d
    return-object v2

    .line 195
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_21
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    if-nez v2, :cond_27

    const/4 v2, 0x0

    goto :goto_1d

    :cond_27
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parent:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1d
.end method

.method protected handleChildInline(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public final parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .registers 8
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "foundStartTag":Z
    const/4 v3, 0x0

    .line 111
    .local v3, "skippingElementDepth":I
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 112
    .local v1, "eventType":I
    packed-switch v1, :pswitch_data_64

    .line 157
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 114
    :pswitch_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "tagName":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->tag:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 118
    :cond_1e
    if-eqz v2, :cond_9

    .line 119
    if-lez v3, :cond_25

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 121
    :cond_25
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 122
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 124
    :cond_2f
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    invoke-direct {p0, p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->newChildParser(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    move-result-object v0

    .line 125
    .local v0, "childElementParser":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    if-nez v0, :cond_39

    .line 126
    const/4 v3, 0x1

    goto :goto_9

    .line 128
    :cond_39
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->addChild(Ljava/lang/Object;)V

    goto :goto_9

    .line 134
    .end local v0    # "childElementParser":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :pswitch_41
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    .line 135
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 139
    :pswitch_49
    if-eqz v2, :cond_9

    .line 140
    if-lez v3, :cond_50

    .line 141
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 143
    :cond_50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 144
    .restart local v4    # "tagName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 146
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->build()Ljava/lang/Object;

    move-result-object v5

    .line 152
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_61
    return-object v5

    :pswitch_62
    const/4 v5, 0x0

    goto :goto_61

    .line 112
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_62
        :pswitch_d
        :pswitch_49
        :pswitch_41
    .end packed-switch
.end method

.method protected final parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 311
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 315
    .end local p3    # "defaultValue":Z
    :cond_b
    return p3
.end method

.method protected parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 234
    return-void
.end method

.method protected final parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 260
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p3

    .line 265
    .end local p3    # "defaultValue":I
    :cond_b
    return p3

    .line 261
    .restart local p3    # "defaultValue":I
    :catch_c
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 287
    :try_start_7
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide p3

    .line 292
    .end local p3    # "defaultValue":J
    :cond_b
    return-wide p3

    .line 288
    .restart local p3    # "defaultValue":J
    :catch_c
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 273
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v2

    return v2

    .line 274
    :catch_c
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 278
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 301
    :try_start_7
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide v2

    return-wide v2

    .line 302
    :catch_c
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 306
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v2, p2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 249
    return-object v0

    .line 251
    :cond_8
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {v1, p2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method protected parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 227
    return-void
.end method

.method protected final putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method
