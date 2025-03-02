.class public Laenu/aps3e/Emulator$MetaInfo;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/Emulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaInfo"
.end annotation


# instance fields
.field category:Ljava/lang/String;

.field icon:[B

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field serial:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
