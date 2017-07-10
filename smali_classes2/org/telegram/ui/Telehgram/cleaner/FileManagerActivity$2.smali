.class Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$2;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, ".mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
