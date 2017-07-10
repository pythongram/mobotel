.class public Lorg/telegram/ui/Telehgram/cleaner/Items;
.super Ljava/lang/Object;
.source "Items.java"


# instance fields
.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/Items;->image:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/Items;->name:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/Items;->id:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/Items;->title:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/cleaner/Items;->url:Ljava/lang/String;

    return-void
.end method
