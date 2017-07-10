.class public final Lorg/joda/time/MutableDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "MutableDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/MutableDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e3028d97dec5739L


# instance fields
.field private iField:Lorg/joda/time/DateTimeField;

.field private iInstant:Lorg/joda/time/MutableDateTime;


# direct methods
.method constructor <init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V
    .registers 3

    .prologue
    .line 1264
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1265
    iput-object p1, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    .line 1266
    iput-object p2, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1267
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1281
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableDateTime;

    iput-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    .line 1282
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 1283
    iget-object v1, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v1}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1284
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1275
    return-void
.end method


# virtual methods
.method public add(I)Lorg/joda/time/MutableDateTime;
    .registers 6

    .prologue
    .line 1333
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1334
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public add(J)Lorg/joda/time/MutableDateTime;
    .registers 8

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1346
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public addWrapField(I)Lorg/joda/time/MutableDateTime;
    .registers 6

    .prologue
    .line 1357
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1358
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected getMillis()J
    .registers 3

    .prologue
    .line 1302
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMutableDateTime()Lorg/joda/time/MutableDateTime;
    .registers 2

    .prologue
    .line 1321
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundCeiling()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 1420
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1421
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundFloor()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 1409
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1410
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfCeiling()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 1444
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1445
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfEven()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 1456
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1457
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public roundHalfFloor()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 1432
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1433
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(I)Lorg/joda/time/MutableDateTime;
    .registers 6

    .prologue
    .line 1370
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1371
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lorg/joda/time/MutableDateTime;
    .registers 3

    .prologue
    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutableDateTime$Property;->set(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MutableDateTime;

    .line 1398
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MutableDateTime;
    .registers 7

    .prologue
    .line 1384
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    invoke-virtual {v2}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1385
    iget-object v0, p0, Lorg/joda/time/MutableDateTime$Property;->iInstant:Lorg/joda/time/MutableDateTime;

    return-object v0
.end method
