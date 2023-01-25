// The MIT License (MIT)
// Copyright © 2022 Ivan Izyumkin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import UIKit.UIDevice

/// The protocol is necessary to hide unnecessary methods with Unicode categories in UnicodeManager.
protocol MCUnicodeManagerProtocol {
    /// - Returns: Categories with filtered emoji arrays that are available in the current version of iOS.
    func getEmojisForCurrentIOSVersion() -> [MCEmojiCategory]
}

/// The class is responsible for getting a relevant set of emojis for iOS version.
final class MCUnicodeManager: MCUnicodeManagerProtocol {
    
    // MARK: - Private Properties
    
    /// - Returns: The maximum available Unicode version for the current iOS version.
    private let maxCurrentAvailableUnicodeVersion: Double = {
        let currentIOSVersion = (UIDevice.current.systemVersion as NSString).floatValue
        switch currentIOSVersion {
        case 12.1...13.1:
            return 11.0
        case 13.2...14.1:
            return 12.0
        case 14.2...14.4:
            return 13.0
        case 14.5...15.3:
            return 13.1
        case 15.4...:
            return 14.0
        default:
            return 5.0
        }
    }()
    
    // MARK: - Public Methods
    
    public func getEmojisForCurrentIOSVersion() -> [MCEmojiCategory] {
        return [
            .init(
                categoryName: getEmojiCategoryTitle(for: .people),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F600],
                        emojiType: .single,
                        searchKey: "grinningFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F603],
                        emojiType: .single,
                        searchKey: "grinningFaceWithBigEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F604],
                        emojiType: .single,
                        searchKey: "grinningFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F601],
                        emojiType: .single,
                        searchKey: "beamingFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F606],
                        emojiType: .single,
                        searchKey: "grinningSquintingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F605],
                        emojiType: .single,
                        searchKey: "grinningFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F923],
                        emojiType: .single,
                        searchKey: "rollingOnTheFloorLaughing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F602],
                        emojiType: .single,
                        searchKey: "faceWithTearsOfJoy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F642],
                        emojiType: .single,
                        searchKey: "slightlySmilingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F643],
                        emojiType: .single,
                        searchKey: "upsideDownFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE0],
                        emojiType: .single,
                        searchKey: "meltingFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F609],
                        emojiType: .single,
                        searchKey: "winkingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60A],
                        emojiType: .single,
                        searchKey: "smilingFaceWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F607],
                        emojiType: .single,
                        searchKey: "smilingFaceWithHalo",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F970],
                        emojiType: .single,
                        searchKey: "smilingFaceWithHearts",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60D],
                        emojiType: .single,
                        searchKey: "smilingFaceWithHeartEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F929],
                        emojiType: .single,
                        searchKey: "starStruck",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F618],
                        emojiType: .single,
                        searchKey: "faceBlowingAKiss",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F617],
                        emojiType: .single,
                        searchKey: "kissingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x263A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "smilingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61A],
                        emojiType: .single,
                        searchKey: "kissingFaceWithClosedEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F619],
                        emojiType: .single,
                        searchKey: "kissingFaceWithSmilingEyes",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F972],
                        emojiType: .single,
                        searchKey: "smilingFaceWithTear",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60B],
                        emojiType: .single,
                        searchKey: "faceSavoringFood",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61B],
                        emojiType: .single,
                        searchKey: "faceWithTongue",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61C],
                        emojiType: .single,
                        searchKey: "winkingFaceWithTongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92A],
                        emojiType: .single,
                        searchKey: "zanyFace",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61D],
                        emojiType: .single,
                        searchKey: "squintingFaceWithTongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F911],
                        emojiType: .single,
                        searchKey: "moneyMouthFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F917],
                        emojiType: .single,
                        searchKey: "smilingFaceWithOpenHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92D],
                        emojiType: .single,
                        searchKey: "faceWithHandOverMouth",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE2],
                        emojiType: .single,
                        searchKey: "faceWithOpenEyesAndHandOverMouth",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE3],
                        emojiType: .single,
                        searchKey: "faceWithPeekingEye",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92B],
                        emojiType: .single,
                        searchKey: "shushingFace",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F914],
                        emojiType: .single,
                        searchKey: "thinkingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE1],
                        emojiType: .single,
                        searchKey: "salutingFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F910],
                        emojiType: .single,
                        searchKey: "zipperMouthFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F928],
                        emojiType: .single,
                        searchKey: "faceWithRaisedEyebrow",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F610],
                        emojiType: .single,
                        searchKey: "neutralFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F611],
                        emojiType: .single,
                        searchKey: "expressionlessFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F636],
                        emojiType: .single,
                        searchKey: "faceWithoutMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE5],
                        emojiType: .single,
                        searchKey: "dottedLineFace",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F636, 0x200D, 0x1F32B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "faceInClouds",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60F],
                        emojiType: .single,
                        searchKey: "smirkingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F612],
                        emojiType: .single,
                        searchKey: "unamusedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F644],
                        emojiType: .single,
                        searchKey: "faceWithRollingEyes",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62C],
                        emojiType: .single,
                        searchKey: "grimacingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62E, 0x200D, 0x1F4A8],
                        emojiType: .single,
                        searchKey: "faceExhaling",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F925],
                        emojiType: .single,
                        searchKey: "lyingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE8],
                        emojiType: .single,
                        searchKey: "shakingFace",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60C],
                        emojiType: .single,
                        searchKey: "relievedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F614],
                        emojiType: .single,
                        searchKey: "pensiveFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62A],
                        emojiType: .single,
                        searchKey: "sleepyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F924],
                        emojiType: .single,
                        searchKey: "droolingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F634],
                        emojiType: .single,
                        searchKey: "sleepingFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F637],
                        emojiType: .single,
                        searchKey: "faceWithMedicalMask",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F912],
                        emojiType: .single,
                        searchKey: "faceWithThermometer",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F915],
                        emojiType: .single,
                        searchKey: "faceWithHeadBandage",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F922],
                        emojiType: .single,
                        searchKey: "nauseatedFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92E],
                        emojiType: .single,
                        searchKey: "faceVomiting",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F927],
                        emojiType: .single,
                        searchKey: "sneezingFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F975],
                        emojiType: .single,
                        searchKey: "hotFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F976],
                        emojiType: .single,
                        searchKey: "coldFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F974],
                        emojiType: .single,
                        searchKey: "woozyFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F635],
                        emojiType: .single,
                        searchKey: "faceWithCrossedOutEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F635, 0x200D, 0x1F4AB],
                        emojiType: .single,
                        searchKey: "faceWithSpiralEyes",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92F],
                        emojiType: .single,
                        searchKey: "explodingHead",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F920],
                        emojiType: .single,
                        searchKey: "cowboyHatFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F973],
                        emojiType: .single,
                        searchKey: "partyingFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F978],
                        emojiType: .single,
                        searchKey: "disguisedFace",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F60E],
                        emojiType: .single,
                        searchKey: "smilingFaceWithSunglasses",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F913],
                        emojiType: .single,
                        searchKey: "nerdFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D0],
                        emojiType: .single,
                        searchKey: "faceWithMonocle",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F615],
                        emojiType: .single,
                        searchKey: "confusedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE4],
                        emojiType: .single,
                        searchKey: "faceWithDiagonalMouth",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61F],
                        emojiType: .single,
                        searchKey: "worriedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F641],
                        emojiType: .single,
                        searchKey: "slightlyFrowningFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2639, 0xFE0F],
                        emojiType: .single,
                        searchKey: "frowningFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62E],
                        emojiType: .single,
                        searchKey: "faceWithOpenMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62F],
                        emojiType: .single,
                        searchKey: "hushedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F632],
                        emojiType: .single,
                        searchKey: "astonishedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F633],
                        emojiType: .single,
                        searchKey: "flushedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97A],
                        emojiType: .single,
                        searchKey: "pleadingFace",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F979],
                        emojiType: .single,
                        searchKey: "faceHoldingBackTears",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F626],
                        emojiType: .single,
                        searchKey: "frowningFaceWithOpenMouth",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F627],
                        emojiType: .single,
                        searchKey: "anguishedFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F628],
                        emojiType: .single,
                        searchKey: "fearfulFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F630],
                        emojiType: .single,
                        searchKey: "anxiousFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F625],
                        emojiType: .single,
                        searchKey: "sadButRelievedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F622],
                        emojiType: .single,
                        searchKey: "cryingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62D],
                        emojiType: .single,
                        searchKey: "loudlyCryingFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F631],
                        emojiType: .single,
                        searchKey: "faceScreamingInFear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F616],
                        emojiType: .single,
                        searchKey: "confoundedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F623],
                        emojiType: .single,
                        searchKey: "perseveringFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F61E],
                        emojiType: .single,
                        searchKey: "disappointedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F613],
                        emojiType: .single,
                        searchKey: "downcastFaceWithSweat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F629],
                        emojiType: .single,
                        searchKey: "wearyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F62B],
                        emojiType: .single,
                        searchKey: "tiredFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F971],
                        emojiType: .single,
                        searchKey: "yawningFace",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F624],
                        emojiType: .single,
                        searchKey: "faceWithSteamFromNose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F621],
                        emojiType: .single,
                        searchKey: "enragedFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F620],
                        emojiType: .single,
                        searchKey: "angryFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F92C],
                        emojiType: .single,
                        searchKey: "faceWithSymbolsOnMouth",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F608],
                        emojiType: .single,
                        searchKey: "smilingFaceWithHorns",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47F],
                        emojiType: .single,
                        searchKey: "angryFaceWithHorns",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F480],
                        emojiType: .single,
                        searchKey: "skull",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2620, 0xFE0F],
                        emojiType: .single,
                        searchKey: "skullAndCrossbones",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A9],
                        emojiType: .single,
                        searchKey: "pileOfPoo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F921],
                        emojiType: .single,
                        searchKey: "clownFace",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F479],
                        emojiType: .single,
                        searchKey: "ogre",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47A],
                        emojiType: .single,
                        searchKey: "goblin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47B],
                        emojiType: .single,
                        searchKey: "ghost",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47D],
                        emojiType: .single,
                        searchKey: "alien",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47E],
                        emojiType: .single,
                        searchKey: "alienMonster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F916],
                        emojiType: .single,
                        searchKey: "robot",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63A],
                        emojiType: .single,
                        searchKey: "grinningCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F638],
                        emojiType: .single,
                        searchKey: "grinningCatWithSmilingEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F639],
                        emojiType: .single,
                        searchKey: "catWithTearsOfJoy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63B],
                        emojiType: .single,
                        searchKey: "smilingCatWithHeartEyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63C],
                        emojiType: .single,
                        searchKey: "catWithWrySmile",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63D],
                        emojiType: .single,
                        searchKey: "kissingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F640],
                        emojiType: .single,
                        searchKey: "wearyCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63F],
                        emojiType: .single,
                        searchKey: "cryingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F63E],
                        emojiType: .single,
                        searchKey: "poutingCat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F648],
                        emojiType: .single,
                        searchKey: "seeNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F649],
                        emojiType: .single,
                        searchKey: "hearNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64A],
                        emojiType: .single,
                        searchKey: "speakNoEvilMonkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48C],
                        emojiType: .single,
                        searchKey: "loveLetter",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F498],
                        emojiType: .single,
                        searchKey: "heartWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49D],
                        emojiType: .single,
                        searchKey: "heartWithRibbon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F496],
                        emojiType: .single,
                        searchKey: "sparklingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F497],
                        emojiType: .single,
                        searchKey: "growingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F493],
                        emojiType: .single,
                        searchKey: "beatingHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49E],
                        emojiType: .single,
                        searchKey: "revolvingHearts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F495],
                        emojiType: .single,
                        searchKey: "twoHearts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49F],
                        emojiType: .single,
                        searchKey: "heartDecoration",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2763, 0xFE0F],
                        emojiType: .single,
                        searchKey: "heartExclamation",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F494],
                        emojiType: .single,
                        searchKey: "brokenHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F, 0x200D, 0x1F525],
                        emojiType: .single,
                        searchKey: "heartOnFire",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F, 0x200D, 0x1FA79],
                        emojiType: .single,
                        searchKey: "mendingHeart",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x2764, 0xFE0F],
                        emojiType: .single,
                        searchKey: "redHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA77],
                        emojiType: .single,
                        searchKey: "pinkHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E1],
                        emojiType: .single,
                        searchKey: "orangeHeart",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49B],
                        emojiType: .single,
                        searchKey: "yellowHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49A],
                        emojiType: .single,
                        searchKey: "greenHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F499],
                        emojiType: .single,
                        searchKey: "blueHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA75],
                        emojiType: .single,
                        searchKey: "lightBlueHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F49C],
                        emojiType: .single,
                        searchKey: "purpleHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90E],
                        emojiType: .single,
                        searchKey: "brownHeart",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A4],
                        emojiType: .single,
                        searchKey: "blackHeart",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA76],
                        emojiType: .single,
                        searchKey: "greyHeart",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90D],
                        emojiType: .single,
                        searchKey: "whiteHeart",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48B],
                        emojiType: .single,
                        searchKey: "kissMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AF],
                        emojiType: .single,
                        searchKey: "hundredPoints",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A2],
                        emojiType: .single,
                        searchKey: "angerSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A5],
                        emojiType: .single,
                        searchKey: "collision",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AB],
                        emojiType: .single,
                        searchKey: "dizzy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A6],
                        emojiType: .single,
                        searchKey: "sweatDroplets",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A8],
                        emojiType: .single,
                        searchKey: "dashingAway",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F573, 0xFE0F],
                        emojiType: .single,
                        searchKey: "hole",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AC],
                        emojiType: .single,
                        searchKey: "speechBalloon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F441, 0xFE0F, 0x200D, 0x1F5E8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "eyeInSpeechBubble",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "leftSpeechBubble",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5EF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rightAngerBubble",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AD],
                        emojiType: .single,
                        searchKey: "thoughtBalloon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A4],
                        emojiType: .single,
                        searchKey: "zZZ",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44B],
                        emojiType: .choiceOfSkin,
                        searchKey: "wavingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91A],
                        emojiType: .choiceOfSkin,
                        searchKey: "raisedBackOfHand",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F590, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "handWithFingersSplayed",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x270B],
                        emojiType: .choiceOfSkin,
                        searchKey: "raisedHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F596],
                        emojiType: .choiceOfSkin,
                        searchKey: "vulcanSalute",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF1],
                        emojiType: .choiceOfSkin,
                        searchKey: "rightwardsHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF2],
                        emojiType: .choiceOfSkin,
                        searchKey: "leftwardsHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF3],
                        emojiType: .choiceOfSkin,
                        searchKey: "palmDownHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF4],
                        emojiType: .choiceOfSkin,
                        searchKey: "palmUpHand",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF7],
                        emojiType: .choiceOfSkin,
                        searchKey: "leftwardsPushingHand",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF8],
                        emojiType: .choiceOfSkin,
                        searchKey: "rightwardsPushingHand",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44C],
                        emojiType: .choiceOfSkin,
                        searchKey: "oKHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90C],
                        emojiType: .choiceOfSkin,
                        searchKey: "pinchedFingers",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F90F],
                        emojiType: .choiceOfSkin,
                        searchKey: "pinchingHand",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x270C, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "victoryHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91E],
                        emojiType: .choiceOfSkin,
                        searchKey: "crossedFingers",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF0],
                        emojiType: .choiceOfSkin,
                        searchKey: "handWithIndexFingerAndThumbCrossed",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91F],
                        emojiType: .choiceOfSkin,
                        searchKey: "loveYouGesture",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F918],
                        emojiType: .choiceOfSkin,
                        searchKey: "signOfTheHorns",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F919],
                        emojiType: .choiceOfSkin,
                        searchKey: "callMeHand",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F448],
                        emojiType: .choiceOfSkin,
                        searchKey: "backhandIndexPointingLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F449],
                        emojiType: .choiceOfSkin,
                        searchKey: "backhandIndexPointingRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F446],
                        emojiType: .choiceOfSkin,
                        searchKey: "backhandIndexPointingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F595],
                        emojiType: .choiceOfSkin,
                        searchKey: "middleFinger",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F447],
                        emojiType: .choiceOfSkin,
                        searchKey: "backhandIndexPointingDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x261D, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "indexPointingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF5],
                        emojiType: .choiceOfSkin,
                        searchKey: "indexPointingAtTheViewer",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44D],
                        emojiType: .choiceOfSkin,
                        searchKey: "thumbsUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44E],
                        emojiType: .choiceOfSkin,
                        searchKey: "thumbsDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x270A],
                        emojiType: .choiceOfSkin,
                        searchKey: "raisedFist",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44A],
                        emojiType: .choiceOfSkin,
                        searchKey: "oncomingFist",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91B],
                        emojiType: .choiceOfSkin,
                        searchKey: "leftFacingFist",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91C],
                        emojiType: .choiceOfSkin,
                        searchKey: "rightFacingFist",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F44F],
                        emojiType: .choiceOfSkin,
                        searchKey: "clappingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64C],
                        emojiType: .choiceOfSkin,
                        searchKey: "raisingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAF6],
                        emojiType: .choiceOfSkin,
                        searchKey: "heartHands",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F450],
                        emojiType: .choiceOfSkin,
                        searchKey: "openHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F932],
                        emojiType: .choiceOfSkin,
                        searchKey: "palmsUpTogether",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F91D],
                        emojiType: .choiceOfSkin,
                        searchKey: "handshake",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64F],
                        emojiType: .choiceOfSkin,
                        searchKey: "foldedHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x270D, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "writingHand",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F485],
                        emojiType: .choiceOfSkin,
                        searchKey: "nailPolish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F933],
                        emojiType: .choiceOfSkin,
                        searchKey: "selfie",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AA],
                        emojiType: .choiceOfSkin,
                        searchKey: "flexedBiceps",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BE],
                        emojiType: .single,
                        searchKey: "mechanicalArm",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BF],
                        emojiType: .single,
                        searchKey: "mechanicalLeg",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B5],
                        emojiType: .choiceOfSkin,
                        searchKey: "leg",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B6],
                        emojiType: .choiceOfSkin,
                        searchKey: "foot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F442],
                        emojiType: .choiceOfSkin,
                        searchKey: "ear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BB],
                        emojiType: .choiceOfSkin,
                        searchKey: "earWithHearingAid",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F443],
                        emojiType: .choiceOfSkin,
                        searchKey: "nose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E0],
                        emojiType: .single,
                        searchKey: "brain",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC0],
                        emojiType: .single,
                        searchKey: "anatomicalHeart",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC1],
                        emojiType: .single,
                        searchKey: "lungs",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B7],
                        emojiType: .single,
                        searchKey: "tooth",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B4],
                        emojiType: .single,
                        searchKey: "bone",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F440],
                        emojiType: .single,
                        searchKey: "eyes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F441, 0xFE0F],
                        emojiType: .single,
                        searchKey: "eye",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F445],
                        emojiType: .single,
                        searchKey: "tongue",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F444],
                        emojiType: .single,
                        searchKey: "mouth",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE6],
                        emojiType: .single,
                        searchKey: "bitingLip",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F476],
                        emojiType: .choiceOfSkin,
                        searchKey: "baby",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D2],
                        emojiType: .choiceOfSkin,
                        searchKey: "child",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F466],
                        emojiType: .choiceOfSkin,
                        searchKey: "boy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F467],
                        emojiType: .choiceOfSkin,
                        searchKey: "girl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1],
                        emojiType: .choiceOfSkin,
                        searchKey: "person",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBlondHair",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468],
                        emojiType: .choiceOfSkin,
                        searchKey: "man",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBeard",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBeard",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D4, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBeard",
                        unicodeVersion: 13.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B0],
                        emojiType: .choiceOfSkin,
                        searchKey: "manRedHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B1],
                        emojiType: .choiceOfSkin,
                        searchKey: "manCurlyHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B3],
                        emojiType: .choiceOfSkin,
                        searchKey: "manWhiteHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9B2],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBald",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469],
                        emojiType: .choiceOfSkin,
                        searchKey: "woman",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B0],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanRedHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B0],
                        emojiType: .choiceOfSkin,
                        searchKey: "personRedHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B1],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanCurlyHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B1],
                        emojiType: .choiceOfSkin,
                        searchKey: "personCurlyHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B3],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWhiteHair",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B3],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWhiteHair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9B2],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBald",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9B2],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBald",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBlondHair",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F471, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBlondHair",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D3],
                        emojiType: .choiceOfSkin,
                        searchKey: "olderPerson",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F474],
                        emojiType: .choiceOfSkin,
                        searchKey: "oldMan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F475],
                        emojiType: .choiceOfSkin,
                        searchKey: "oldWoman",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D],
                        emojiType: .choiceOfSkin,
                        searchKey: "personFrowning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFrowning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64D, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFrowning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E],
                        emojiType: .choiceOfSkin,
                        searchKey: "personPouting",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manPouting",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64E, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanPouting",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645],
                        emojiType: .choiceOfSkin,
                        searchKey: "personGesturingNO",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGesturingNO",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F645, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGesturingNO",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646],
                        emojiType: .choiceOfSkin,
                        searchKey: "personGesturingOK",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGesturingOK",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F646, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGesturingOK",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481],
                        emojiType: .choiceOfSkin,
                        searchKey: "personTippingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manTippingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F481, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanTippingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B],
                        emojiType: .choiceOfSkin,
                        searchKey: "personRaisingHand",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manRaisingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F64B, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanRaisingHand",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF],
                        emojiType: .choiceOfSkin,
                        searchKey: "deafPerson",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "deafMan",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CF, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "deafWoman",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBowing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBowing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F647, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBowing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926],
                        emojiType: .choiceOfSkin,
                        searchKey: "personFacepalming",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFacepalming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F926, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFacepalming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937],
                        emojiType: .choiceOfSkin,
                        searchKey: "personShrugging",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manShrugging",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F937, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanShrugging",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2695, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "healthWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2695, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manHealthWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2695, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanHealthWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F393],
                        emojiType: .choiceOfSkin,
                        searchKey: "student",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F393],
                        emojiType: .choiceOfSkin,
                        searchKey: "manStudent",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F393],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanStudent",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3EB],
                        emojiType: .choiceOfSkin,
                        searchKey: "teacher",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3EB],
                        emojiType: .choiceOfSkin,
                        searchKey: "manTeacher",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3EB],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanTeacher",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2696, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "judge",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2696, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manJudge",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2696, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanJudge",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F33E],
                        emojiType: .choiceOfSkin,
                        searchKey: "farmer",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F33E],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFarmer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F33E],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFarmer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F373],
                        emojiType: .choiceOfSkin,
                        searchKey: "cook",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F373],
                        emojiType: .choiceOfSkin,
                        searchKey: "manCook",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F373],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanCook",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F527],
                        emojiType: .choiceOfSkin,
                        searchKey: "mechanic",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F527],
                        emojiType: .choiceOfSkin,
                        searchKey: "manMechanic",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F527],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanMechanic",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3ED],
                        emojiType: .choiceOfSkin,
                        searchKey: "factoryWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3ED],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFactoryWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3ED],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFactoryWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F4BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "officeWorker",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F4BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "manOfficeWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F4BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanOfficeWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F52C],
                        emojiType: .choiceOfSkin,
                        searchKey: "scientist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F52C],
                        emojiType: .choiceOfSkin,
                        searchKey: "manScientist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F52C],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanScientist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F4BB],
                        emojiType: .choiceOfSkin,
                        searchKey: "technologist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F4BB],
                        emojiType: .choiceOfSkin,
                        searchKey: "manTechnologist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F4BB],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanTechnologist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3A4],
                        emojiType: .choiceOfSkin,
                        searchKey: "singer",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3A4],
                        emojiType: .choiceOfSkin,
                        searchKey: "manSinger",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3A4],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanSinger",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F3A8],
                        emojiType: .choiceOfSkin,
                        searchKey: "artist",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F3A8],
                        emojiType: .choiceOfSkin,
                        searchKey: "manArtist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F3A8],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanArtist",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x2708, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "pilot",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2708, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manPilot",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2708, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanPilot",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F680],
                        emojiType: .choiceOfSkin,
                        searchKey: "astronaut",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F680],
                        emojiType: .choiceOfSkin,
                        searchKey: "manAstronaut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F680],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanAstronaut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F692],
                        emojiType: .choiceOfSkin,
                        searchKey: "firefighter",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F692],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFirefighter",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F692],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFirefighter",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E],
                        emojiType: .choiceOfSkin,
                        searchKey: "policeOfficer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manPoliceOfficer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46E, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanPoliceOfficer",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "detective",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manDetective",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F575, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanDetective",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482],
                        emojiType: .choiceOfSkin,
                        searchKey: "guard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGuard",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F482, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGuard",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F977],
                        emojiType: .choiceOfSkin,
                        searchKey: "ninja",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477],
                        emojiType: .choiceOfSkin,
                        searchKey: "constructionWorker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manConstructionWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F477, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanConstructionWorker",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC5],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWithCrown",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F934],
                        emojiType: .choiceOfSkin,
                        searchKey: "prince",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F478],
                        emojiType: .choiceOfSkin,
                        searchKey: "princess",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWearingTurban",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manWearingTurban",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F473, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWearingTurban",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F472],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWithSkullcap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D5],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWithHeadscarf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInTuxedo",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manInTuxedo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F935, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanInTuxedo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWithVeil",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manWithVeil",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F470, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWithVeil",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F930],
                        emojiType: .choiceOfSkin,
                        searchKey: "pregnantWoman",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC3],
                        emojiType: .choiceOfSkin,
                        searchKey: "pregnantMan",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC4],
                        emojiType: .choiceOfSkin,
                        searchKey: "pregnantPerson",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F931],
                        emojiType: .choiceOfSkin,
                        searchKey: "breastFeeding",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F37C],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F37C],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F37C],
                        emojiType: .choiceOfSkin,
                        searchKey: "personFeedingBaby",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F47C],
                        emojiType: .choiceOfSkin,
                        searchKey: "babyAngel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F385],
                        emojiType: .choiceOfSkin,
                        searchKey: "santaClaus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F936],
                        emojiType: .choiceOfSkin,
                        searchKey: "mrsClaus",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F384],
                        emojiType: .choiceOfSkin,
                        searchKey: "mxClaus",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8],
                        emojiType: .choiceOfSkin,
                        searchKey: "superhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manSuperhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B8, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanSuperhero",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9],
                        emojiType: .choiceOfSkin,
                        searchKey: "supervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manSupervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9B9, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanSupervillain",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9],
                        emojiType: .choiceOfSkin,
                        searchKey: "mage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manMage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D9, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanMage",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA],
                        emojiType: .choiceOfSkin,
                        searchKey: "fairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manFairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DA, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanFairy",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB],
                        emojiType: .choiceOfSkin,
                        searchKey: "vampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manVampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DB, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanVampire",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC],
                        emojiType: .choiceOfSkin,
                        searchKey: "merperson",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "merman",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DC, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "mermaid",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD],
                        emojiType: .choiceOfSkin,
                        searchKey: "elf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manElf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DD, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanElf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE],
                        emojiType: .single,
                        searchKey: "genie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .single,
                        searchKey: "manGenie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DE, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .single,
                        searchKey: "womanGenie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF],
                        emojiType: .single,
                        searchKey: "zombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .single,
                        searchKey: "manZombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9DF, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .single,
                        searchKey: "womanZombie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CC],
                        emojiType: .single,
                        searchKey: "troll",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486],
                        emojiType: .choiceOfSkin,
                        searchKey: "personGettingMassage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGettingMassage",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F486, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGettingMassage",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487],
                        emojiType: .choiceOfSkin,
                        searchKey: "personGettingHaircut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGettingHaircut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F487, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGettingHaircut",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWalking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manWalking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B6, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWalking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD],
                        emojiType: .choiceOfSkin,
                        searchKey: "personStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CD, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanStanding",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE],
                        emojiType: .choiceOfSkin,
                        searchKey: "personKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CE, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanKneeling",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9AF],
                        emojiType: .choiceOfSkin,
                        searchKey: "personWithWhiteCane",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9AF],
                        emojiType: .choiceOfSkin,
                        searchKey: "manWithWhiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9AF],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanWithWhiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInMotorizedWheelchair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "manInMotorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9BC],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanInMotorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F9BD],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInManualWheelchair",
                        unicodeVersion: 12.1
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F9BD],
                        emojiType: .choiceOfSkin,
                        searchKey: "manInManualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F9BD],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanInManualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3],
                        emojiType: .choiceOfSkin,
                        searchKey: "personRunning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manRunning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C3, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanRunning",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F483],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanDancing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F57A],
                        emojiType: .choiceOfSkin,
                        searchKey: "manDancing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F574, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInSuitLevitating",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F],
                        emojiType: .single,
                        searchKey: "peopleWithBunnyEars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .single,
                        searchKey: "menWithBunnyEars",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46F, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .single,
                        searchKey: "womenWithBunnyEars",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D6, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanInSteamyRoom",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7],
                        emojiType: .choiceOfSkin,
                        searchKey: "personClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D7, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanClimbing",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93A],
                        emojiType: .single,
                        searchKey: "personFencing",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C7],
                        emojiType: .choiceOfSkin,
                        searchKey: "horseRacing",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F7, 0xFE0F],
                        emojiType: .single,
                        searchKey: "skier",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C2],
                        emojiType: .single,
                        searchKey: "snowboarder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "personGolfing",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manGolfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CC, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanGolfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4],
                        emojiType: .choiceOfSkin,
                        searchKey: "personSurfing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manSurfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C4, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanSurfing",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3],
                        emojiType: .choiceOfSkin,
                        searchKey: "personRowingBoat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manRowingBoat",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A3, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanRowingBoat",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA],
                        emojiType: .choiceOfSkin,
                        searchKey: "personSwimming",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manSwimming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CA, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanSwimming",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBouncingBall",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBouncingBall",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F9, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBouncingBall",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "personLiftingWeights",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manLiftingWeights",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CB, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanLiftingWeights",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4],
                        emojiType: .choiceOfSkin,
                        searchKey: "personBiking",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B4, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5],
                        emojiType: .choiceOfSkin,
                        searchKey: "personMountainBiking",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manMountainBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B5, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanMountainBiking",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938],
                        emojiType: .choiceOfSkin,
                        searchKey: "personCartwheeling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manCartwheeling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F938, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanCartwheeling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C],
                        emojiType: .single,
                        searchKey: "peopleWrestling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .single,
                        searchKey: "menWrestling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93C, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .single,
                        searchKey: "womenWrestling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D],
                        emojiType: .choiceOfSkin,
                        searchKey: "personPlayingWaterPolo",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manPlayingWaterPolo",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93D, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanPlayingWaterPolo",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E],
                        emojiType: .choiceOfSkin,
                        searchKey: "personPlayingHandball",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manPlayingHandball",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93E, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanPlayingHandball",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939],
                        emojiType: .choiceOfSkin,
                        searchKey: "personJuggling",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manJuggling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F939, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanJuggling",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8],
                        emojiType: .choiceOfSkin,
                        searchKey: "personInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8, 0x200D, 0x2642, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "manInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D8, 0x200D, 0x2640, 0xFE0F],
                        emojiType: .choiceOfSkin,
                        searchKey: "womanInLotusPosition",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C0],
                        emojiType: .choiceOfSkin,
                        searchKey: "personTakingBath",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CC],
                        emojiType: .single,
                        searchKey: "personInBed",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9D1, 0x200D, 0x1F91D, 0x200D, 0x1F9D1],
                        emojiType: .single,
                        searchKey: "peopleHoldingHands",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46D],
                        emojiType: .single,
                        searchKey: "womenHoldingHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46B],
                        emojiType: .single,
                        searchKey: "womanAndManHoldingHands",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46C],
                        emojiType: .single,
                        searchKey: "menHoldingHands",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48F],
                        emojiType: .single,
                        searchKey: "kiss",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F468],
                        emojiType: .single,
                        searchKey: "kissWomanMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F468],
                        emojiType: .single,
                        searchKey: "kissManMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F48B, 0x200D, 0x1F469],
                        emojiType: .single,
                        searchKey: "kissWomanWoman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F491],
                        emojiType: .single,
                        searchKey: "coupleWithHeart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F468],
                        emojiType: .single,
                        searchKey: "coupleWithHeartWomanMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F468],
                        emojiType: .single,
                        searchKey: "coupleWithHeartManMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x2764, 0xFE0F, 0x200D, 0x1F469],
                        emojiType: .single,
                        searchKey: "coupleWithHeartWomanWoman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F46A],
                        emojiType: .single,
                        searchKey: "family",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManWomanBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManWomanGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManWomanGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManWomanBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManWomanGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManManBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManManGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManManGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManManBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManManGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanWomanBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyWomanWomanGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanWomanGirlBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanWomanBoyBoy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyWomanWomanGirlGirl",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManBoyBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyManGirlBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F468, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyManGirlGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F466, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanBoyBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyWomanGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F466],
                        emojiType: .single,
                        searchKey: "familyWomanGirlBoy",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F469, 0x200D, 0x1F467, 0x200D, 0x1F467],
                        emojiType: .single,
                        searchKey: "familyWomanGirlGirl",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "speakingHead",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F464],
                        emojiType: .single,
                        searchKey: "bustInSilhouette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F465],
                        emojiType: .single,
                        searchKey: "bustsInSilhouette",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAC2],
                        emojiType: .single,
                        searchKey: "peopleHugging",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F463],
                        emojiType: .single,
                        searchKey: "footprints",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .nature),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F435],
                        emojiType: .single,
                        searchKey: "monkeyFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F412],
                        emojiType: .single,
                        searchKey: "monkey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98D],
                        emojiType: .single,
                        searchKey: "gorilla",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A7],
                        emojiType: .single,
                        searchKey: "orangutan",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F436],
                        emojiType: .single,
                        searchKey: "dogFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F415],
                        emojiType: .single,
                        searchKey: "dog",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AE],
                        emojiType: .single,
                        searchKey: "guideDog",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F415, 0x200D, 0x1F9BA],
                        emojiType: .single,
                        searchKey: "serviceDog",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F429],
                        emojiType: .single,
                        searchKey: "poodle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43A],
                        emojiType: .single,
                        searchKey: "wolf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98A],
                        emojiType: .single,
                        searchKey: "fox",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99D],
                        emojiType: .single,
                        searchKey: "raccoon",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F431],
                        emojiType: .single,
                        searchKey: "catFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F408],
                        emojiType: .single,
                        searchKey: "cat",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F408, 0x200D, 0x2B1B],
                        emojiType: .single,
                        searchKey: "blackCat",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F981],
                        emojiType: .single,
                        searchKey: "lion",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42F],
                        emojiType: .single,
                        searchKey: "tigerFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F405],
                        emojiType: .single,
                        searchKey: "tiger",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F406],
                        emojiType: .single,
                        searchKey: "leopard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F434],
                        emojiType: .single,
                        searchKey: "horseFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FACE],
                        emojiType: .single,
                        searchKey: "moose",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FACF],
                        emojiType: .single,
                        searchKey: "donkey",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40E],
                        emojiType: .single,
                        searchKey: "horse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F984],
                        emojiType: .single,
                        searchKey: "unicorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F993],
                        emojiType: .single,
                        searchKey: "zebra",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98C],
                        emojiType: .single,
                        searchKey: "deer",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AC],
                        emojiType: .single,
                        searchKey: "bison",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42E],
                        emojiType: .single,
                        searchKey: "cowFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F402],
                        emojiType: .single,
                        searchKey: "ox",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F403],
                        emojiType: .single,
                        searchKey: "waterBuffalo",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F404],
                        emojiType: .single,
                        searchKey: "cow",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F437],
                        emojiType: .single,
                        searchKey: "pigFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F416],
                        emojiType: .single,
                        searchKey: "pig",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F417],
                        emojiType: .single,
                        searchKey: "boar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43D],
                        emojiType: .single,
                        searchKey: "pigNose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40F],
                        emojiType: .single,
                        searchKey: "ram",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F411],
                        emojiType: .single,
                        searchKey: "ewe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F410],
                        emojiType: .single,
                        searchKey: "goat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42A],
                        emojiType: .single,
                        searchKey: "camel",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42B],
                        emojiType: .single,
                        searchKey: "twoHumpCamel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F999],
                        emojiType: .single,
                        searchKey: "llama",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F992],
                        emojiType: .single,
                        searchKey: "giraffe",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F418],
                        emojiType: .single,
                        searchKey: "elephant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A3],
                        emojiType: .single,
                        searchKey: "mammoth",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98F],
                        emojiType: .single,
                        searchKey: "rhinoceros",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99B],
                        emojiType: .single,
                        searchKey: "hippopotamus",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42D],
                        emojiType: .single,
                        searchKey: "mouseFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F401],
                        emojiType: .single,
                        searchKey: "mouse",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F400],
                        emojiType: .single,
                        searchKey: "rat",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F439],
                        emojiType: .single,
                        searchKey: "hamster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F430],
                        emojiType: .single,
                        searchKey: "rabbitFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F407],
                        emojiType: .single,
                        searchKey: "rabbit",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "chipmunk",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AB],
                        emojiType: .single,
                        searchKey: "beaver",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F994],
                        emojiType: .single,
                        searchKey: "hedgehog",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F987],
                        emojiType: .single,
                        searchKey: "bat",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43B],
                        emojiType: .single,
                        searchKey: "bear",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43B, 0x200D, 0x2744, 0xFE0F],
                        emojiType: .single,
                        searchKey: "polarBear",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F428],
                        emojiType: .single,
                        searchKey: "koala",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43C],
                        emojiType: .single,
                        searchKey: "panda",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A5],
                        emojiType: .single,
                        searchKey: "sloth",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A6],
                        emojiType: .single,
                        searchKey: "otter",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A8],
                        emojiType: .single,
                        searchKey: "skunk",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F998],
                        emojiType: .single,
                        searchKey: "kangaroo",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A1],
                        emojiType: .single,
                        searchKey: "badger",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F43E],
                        emojiType: .single,
                        searchKey: "pawPrints",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F983],
                        emojiType: .single,
                        searchKey: "turkey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F414],
                        emojiType: .single,
                        searchKey: "chicken",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F413],
                        emojiType: .single,
                        searchKey: "rooster",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F423],
                        emojiType: .single,
                        searchKey: "hatchingChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F424],
                        emojiType: .single,
                        searchKey: "babyChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F425],
                        emojiType: .single,
                        searchKey: "frontFacingBabyChick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F426],
                        emojiType: .single,
                        searchKey: "bird",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F427],
                        emojiType: .single,
                        searchKey: "penguin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "dove",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F985],
                        emojiType: .single,
                        searchKey: "eagle",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F986],
                        emojiType: .single,
                        searchKey: "duck",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A2],
                        emojiType: .single,
                        searchKey: "swan",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F989],
                        emojiType: .single,
                        searchKey: "owl",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A4],
                        emojiType: .single,
                        searchKey: "dodo",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB6],
                        emojiType: .single,
                        searchKey: "feather",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A9],
                        emojiType: .single,
                        searchKey: "flamingo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99A],
                        emojiType: .single,
                        searchKey: "peacock",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99C],
                        emojiType: .single,
                        searchKey: "parrot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABD],
                        emojiType: .single,
                        searchKey: "wing",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F426, 0x200D, 0x2B1B],
                        emojiType: .single,
                        searchKey: "blackBird",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABF],
                        emojiType: .single,
                        searchKey: "goose",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F438],
                        emojiType: .single,
                        searchKey: "frog",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40A],
                        emojiType: .single,
                        searchKey: "crocodile",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F422],
                        emojiType: .single,
                        searchKey: "turtle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98E],
                        emojiType: .single,
                        searchKey: "lizard",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40D],
                        emojiType: .single,
                        searchKey: "snake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F432],
                        emojiType: .single,
                        searchKey: "dragonFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F409],
                        emojiType: .single,
                        searchKey: "dragon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F995],
                        emojiType: .single,
                        searchKey: "sauropod",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F996],
                        emojiType: .single,
                        searchKey: "tRex",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F433],
                        emojiType: .single,
                        searchKey: "spoutingWhale",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40B],
                        emojiType: .single,
                        searchKey: "whale",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F42C],
                        emojiType: .single,
                        searchKey: "dolphin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AD],
                        emojiType: .single,
                        searchKey: "seal",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41F],
                        emojiType: .single,
                        searchKey: "fish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F420],
                        emojiType: .single,
                        searchKey: "tropicalFish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F421],
                        emojiType: .single,
                        searchKey: "blowfish",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F988],
                        emojiType: .single,
                        searchKey: "shark",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F419],
                        emojiType: .single,
                        searchKey: "octopus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41A],
                        emojiType: .single,
                        searchKey: "spiralShell",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB8],
                        emojiType: .single,
                        searchKey: "coral",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABC],
                        emojiType: .single,
                        searchKey: "jellyfish",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F40C],
                        emojiType: .single,
                        searchKey: "snail",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F98B],
                        emojiType: .single,
                        searchKey: "butterfly",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41B],
                        emojiType: .single,
                        searchKey: "bug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41C],
                        emojiType: .single,
                        searchKey: "ant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41D],
                        emojiType: .single,
                        searchKey: "honeybee",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB2],
                        emojiType: .single,
                        searchKey: "beetle",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F41E],
                        emojiType: .single,
                        searchKey: "ladyBeetle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F997],
                        emojiType: .single,
                        searchKey: "cricket",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB3],
                        emojiType: .single,
                        searchKey: "cockroach",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F577, 0xFE0F],
                        emojiType: .single,
                        searchKey: "spider",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F578, 0xFE0F],
                        emojiType: .single,
                        searchKey: "spiderWeb",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F982],
                        emojiType: .single,
                        searchKey: "scorpion",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99F],
                        emojiType: .single,
                        searchKey: "mosquito",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB0],
                        emojiType: .single,
                        searchKey: "fly",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB1],
                        emojiType: .single,
                        searchKey: "worm",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9A0],
                        emojiType: .single,
                        searchKey: "microbe",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F490],
                        emojiType: .single,
                        searchKey: "bouquet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F338],
                        emojiType: .single,
                        searchKey: "cherryBlossom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4AE],
                        emojiType: .single,
                        searchKey: "whiteFlower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB7],
                        emojiType: .single,
                        searchKey: "lotus",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F5, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rosette",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F339],
                        emojiType: .single,
                        searchKey: "rose",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F940],
                        emojiType: .single,
                        searchKey: "wiltedFlower",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33A],
                        emojiType: .single,
                        searchKey: "hibiscus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33B],
                        emojiType: .single,
                        searchKey: "sunflower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33C],
                        emojiType: .single,
                        searchKey: "blossom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F337],
                        emojiType: .single,
                        searchKey: "tulip",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABB],
                        emojiType: .single,
                        searchKey: "hyacinth",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F331],
                        emojiType: .single,
                        searchKey: "seedling",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB4],
                        emojiType: .single,
                        searchKey: "pottedPlant",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F332],
                        emojiType: .single,
                        searchKey: "evergreenTree",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F333],
                        emojiType: .single,
                        searchKey: "deciduousTree",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F334],
                        emojiType: .single,
                        searchKey: "palmTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F335],
                        emojiType: .single,
                        searchKey: "cactus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33E],
                        emojiType: .single,
                        searchKey: "sheafOfRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33F],
                        emojiType: .single,
                        searchKey: "herb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2618, 0xFE0F],
                        emojiType: .single,
                        searchKey: "shamrock",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F340],
                        emojiType: .single,
                        searchKey: "fourLeafClover",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F341],
                        emojiType: .single,
                        searchKey: "mapleLeaf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F342],
                        emojiType: .single,
                        searchKey: "fallenLeaf",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F343],
                        emojiType: .single,
                        searchKey: "leafFlutteringInWind",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB9],
                        emojiType: .single,
                        searchKey: "emptyNest",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FABA],
                        emojiType: .single,
                        searchKey: "nestWithEggs",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F344],
                        emojiType: .single,
                        searchKey: "mushroom",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .foodAndDrink),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F347],
                        emojiType: .single,
                        searchKey: "grapes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F348],
                        emojiType: .single,
                        searchKey: "melon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F349],
                        emojiType: .single,
                        searchKey: "watermelon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34A],
                        emojiType: .single,
                        searchKey: "tangerine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34B],
                        emojiType: .single,
                        searchKey: "lemon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34C],
                        emojiType: .single,
                        searchKey: "banana",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34D],
                        emojiType: .single,
                        searchKey: "pineapple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96D],
                        emojiType: .single,
                        searchKey: "mango",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34E],
                        emojiType: .single,
                        searchKey: "redApple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F34F],
                        emojiType: .single,
                        searchKey: "greenApple",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F350],
                        emojiType: .single,
                        searchKey: "pear",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F351],
                        emojiType: .single,
                        searchKey: "peach",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F352],
                        emojiType: .single,
                        searchKey: "cherries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F353],
                        emojiType: .single,
                        searchKey: "strawberry",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD0],
                        emojiType: .single,
                        searchKey: "blueberries",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95D],
                        emojiType: .single,
                        searchKey: "kiwiFruit",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F345],
                        emojiType: .single,
                        searchKey: "tomato",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD2],
                        emojiType: .single,
                        searchKey: "olive",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F965],
                        emojiType: .single,
                        searchKey: "coconut",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F951],
                        emojiType: .single,
                        searchKey: "avocado",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F346],
                        emojiType: .single,
                        searchKey: "eggplant",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F954],
                        emojiType: .single,
                        searchKey: "potato",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F955],
                        emojiType: .single,
                        searchKey: "carrot",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F33D],
                        emojiType: .single,
                        searchKey: "earOfCorn",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F336, 0xFE0F],
                        emojiType: .single,
                        searchKey: "hotPepper",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD1],
                        emojiType: .single,
                        searchKey: "bellPepper",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F952],
                        emojiType: .single,
                        searchKey: "cucumber",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96C],
                        emojiType: .single,
                        searchKey: "leafyGreen",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F966],
                        emojiType: .single,
                        searchKey: "broccoli",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C4],
                        emojiType: .single,
                        searchKey: "garlic",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C5],
                        emojiType: .single,
                        searchKey: "onion",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95C],
                        emojiType: .single,
                        searchKey: "peanuts",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD8],
                        emojiType: .single,
                        searchKey: "beans",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F330],
                        emojiType: .single,
                        searchKey: "chestnut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FADA],
                        emojiType: .single,
                        searchKey: "gingerRoot",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FADB],
                        emojiType: .single,
                        searchKey: "peaPod",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35E],
                        emojiType: .single,
                        searchKey: "bread",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F950],
                        emojiType: .single,
                        searchKey: "croissant",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F956],
                        emojiType: .single,
                        searchKey: "baguetteBread",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD3],
                        emojiType: .single,
                        searchKey: "flatbread",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F968],
                        emojiType: .single,
                        searchKey: "pretzel",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96F],
                        emojiType: .single,
                        searchKey: "bagel",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95E],
                        emojiType: .single,
                        searchKey: "pancakes",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C7],
                        emojiType: .single,
                        searchKey: "waffle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C0],
                        emojiType: .single,
                        searchKey: "cheeseWedge",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F356],
                        emojiType: .single,
                        searchKey: "meatOnBone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F357],
                        emojiType: .single,
                        searchKey: "poultryLeg",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F969],
                        emojiType: .single,
                        searchKey: "cutOfMeat",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F953],
                        emojiType: .single,
                        searchKey: "bacon",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F354],
                        emojiType: .single,
                        searchKey: "hamburger",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35F],
                        emojiType: .single,
                        searchKey: "frenchFries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F355],
                        emojiType: .single,
                        searchKey: "pizza",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32D],
                        emojiType: .single,
                        searchKey: "hotDog",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96A],
                        emojiType: .single,
                        searchKey: "sandwich",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32E],
                        emojiType: .single,
                        searchKey: "taco",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32F],
                        emojiType: .single,
                        searchKey: "burrito",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD4],
                        emojiType: .single,
                        searchKey: "tamale",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F959],
                        emojiType: .single,
                        searchKey: "stuffedFlatbread",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C6],
                        emojiType: .single,
                        searchKey: "falafel",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95A],
                        emojiType: .single,
                        searchKey: "egg",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F373],
                        emojiType: .single,
                        searchKey: "cooking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F958],
                        emojiType: .single,
                        searchKey: "shallowPanOfFood",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F372],
                        emojiType: .single,
                        searchKey: "potOfFood",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD5],
                        emojiType: .single,
                        searchKey: "fondue",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F963],
                        emojiType: .single,
                        searchKey: "bowlWithSpoon",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F957],
                        emojiType: .single,
                        searchKey: "greenSalad",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37F],
                        emojiType: .single,
                        searchKey: "popcorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C8],
                        emojiType: .single,
                        searchKey: "butter",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C2],
                        emojiType: .single,
                        searchKey: "salt",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96B],
                        emojiType: .single,
                        searchKey: "cannedFood",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F371],
                        emojiType: .single,
                        searchKey: "bentoBox",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F358],
                        emojiType: .single,
                        searchKey: "riceCracker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F359],
                        emojiType: .single,
                        searchKey: "riceBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35A],
                        emojiType: .single,
                        searchKey: "cookedRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35B],
                        emojiType: .single,
                        searchKey: "curryRice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35C],
                        emojiType: .single,
                        searchKey: "steamingBowl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F35D],
                        emojiType: .single,
                        searchKey: "spaghetti",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F360],
                        emojiType: .single,
                        searchKey: "roastedSweetPotato",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F362],
                        emojiType: .single,
                        searchKey: "oden",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F363],
                        emojiType: .single,
                        searchKey: "sushi",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F364],
                        emojiType: .single,
                        searchKey: "friedShrimp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F365],
                        emojiType: .single,
                        searchKey: "fishCakeWithSwirl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F96E],
                        emojiType: .single,
                        searchKey: "moonCake",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F361],
                        emojiType: .single,
                        searchKey: "dango",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95F],
                        emojiType: .single,
                        searchKey: "dumpling",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F960],
                        emojiType: .single,
                        searchKey: "fortuneCookie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F961],
                        emojiType: .single,
                        searchKey: "takeoutBox",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F980],
                        emojiType: .single,
                        searchKey: "crab",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F99E],
                        emojiType: .single,
                        searchKey: "lobster",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F990],
                        emojiType: .single,
                        searchKey: "shrimp",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F991],
                        emojiType: .single,
                        searchKey: "squid",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AA],
                        emojiType: .single,
                        searchKey: "oyster",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F366],
                        emojiType: .single,
                        searchKey: "softIceCream",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F367],
                        emojiType: .single,
                        searchKey: "shavedIce",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F368],
                        emojiType: .single,
                        searchKey: "iceCream",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F369],
                        emojiType: .single,
                        searchKey: "doughnut",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36A],
                        emojiType: .single,
                        searchKey: "cookie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F382],
                        emojiType: .single,
                        searchKey: "birthdayCake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F370],
                        emojiType: .single,
                        searchKey: "shortcake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C1],
                        emojiType: .single,
                        searchKey: "cupcake",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F967],
                        emojiType: .single,
                        searchKey: "pie",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36B],
                        emojiType: .single,
                        searchKey: "chocolateBar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36C],
                        emojiType: .single,
                        searchKey: "candy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36D],
                        emojiType: .single,
                        searchKey: "lollipop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36E],
                        emojiType: .single,
                        searchKey: "custard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F36F],
                        emojiType: .single,
                        searchKey: "honeyPot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37C],
                        emojiType: .single,
                        searchKey: "babyBottle",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F95B],
                        emojiType: .single,
                        searchKey: "glassOfMilk",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2615],
                        emojiType: .single,
                        searchKey: "hotBeverage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD6],
                        emojiType: .single,
                        searchKey: "teapot",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F375],
                        emojiType: .single,
                        searchKey: "teacupWithoutHandle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F376],
                        emojiType: .single,
                        searchKey: "sake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37E],
                        emojiType: .single,
                        searchKey: "bottleWithPoppingCork",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F377],
                        emojiType: .single,
                        searchKey: "wineGlass",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F378],
                        emojiType: .single,
                        searchKey: "cocktailGlass",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F379],
                        emojiType: .single,
                        searchKey: "tropicalDrink",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37A],
                        emojiType: .single,
                        searchKey: "beerMug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37B],
                        emojiType: .single,
                        searchKey: "clinkingBeerMugs",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F942],
                        emojiType: .single,
                        searchKey: "clinkingGlasses",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F943],
                        emojiType: .single,
                        searchKey: "tumblerGlass",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD7],
                        emojiType: .single,
                        searchKey: "pouringLiquid",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F964],
                        emojiType: .single,
                        searchKey: "cupWithStraw",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CB],
                        emojiType: .single,
                        searchKey: "bubbleTea",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C3],
                        emojiType: .single,
                        searchKey: "beverageBox",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9C9],
                        emojiType: .single,
                        searchKey: "mate",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9CA],
                        emojiType: .single,
                        searchKey: "ice",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F962],
                        emojiType: .single,
                        searchKey: "chopsticks",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F37D, 0xFE0F],
                        emojiType: .single,
                        searchKey: "forkAndKnifeWithPlate",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F374],
                        emojiType: .single,
                        searchKey: "forkAndKnife",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F944],
                        emojiType: .single,
                        searchKey: "spoon",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52A],
                        emojiType: .single,
                        searchKey: "kitchenKnife",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAD9],
                        emojiType: .single,
                        searchKey: "jar",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3FA],
                        emojiType: .single,
                        searchKey: "amphora",
                        unicodeVersion: 1.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .activity),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F383],
                        emojiType: .single,
                        searchKey: "jackOLantern",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F384],
                        emojiType: .single,
                        searchKey: "christmasTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F386],
                        emojiType: .single,
                        searchKey: "fireworks",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F387],
                        emojiType: .single,
                        searchKey: "sparkler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E8],
                        emojiType: .single,
                        searchKey: "firecracker",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2728],
                        emojiType: .single,
                        searchKey: "sparkles",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F388],
                        emojiType: .single,
                        searchKey: "balloon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F389],
                        emojiType: .single,
                        searchKey: "partyPopper",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38A],
                        emojiType: .single,
                        searchKey: "confettiBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38B],
                        emojiType: .single,
                        searchKey: "tanabataTree",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38D],
                        emojiType: .single,
                        searchKey: "pineDecoration",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38E],
                        emojiType: .single,
                        searchKey: "japaneseDolls",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38F],
                        emojiType: .single,
                        searchKey: "carpStreamer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F390],
                        emojiType: .single,
                        searchKey: "windChime",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F391],
                        emojiType: .single,
                        searchKey: "moonViewingCeremony",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E7],
                        emojiType: .single,
                        searchKey: "redEnvelope",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F380],
                        emojiType: .single,
                        searchKey: "ribbon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F381],
                        emojiType: .single,
                        searchKey: "wrappedGift",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F397, 0xFE0F],
                        emojiType: .single,
                        searchKey: "reminderRibbon",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "admissionTickets",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AB],
                        emojiType: .single,
                        searchKey: "ticket",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F396, 0xFE0F],
                        emojiType: .single,
                        searchKey: "militaryMedal",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C6],
                        emojiType: .single,
                        searchKey: "trophy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C5],
                        emojiType: .single,
                        searchKey: "sportsMedal",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F947],
                        emojiType: .single,
                        searchKey: "1stPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F948],
                        emojiType: .single,
                        searchKey: "2ndPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F949],
                        emojiType: .single,
                        searchKey: "3rdPlaceMedal",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26BD],
                        emojiType: .single,
                        searchKey: "soccerBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26BE],
                        emojiType: .single,
                        searchKey: "baseball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94E],
                        emojiType: .single,
                        searchKey: "softball",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C0],
                        emojiType: .single,
                        searchKey: "basketball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D0],
                        emojiType: .single,
                        searchKey: "volleyball",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C8],
                        emojiType: .single,
                        searchKey: "americanFootball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3C9],
                        emojiType: .single,
                        searchKey: "rugbyFootball",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BE],
                        emojiType: .single,
                        searchKey: "tennis",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94F],
                        emojiType: .single,
                        searchKey: "flyingDisc",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B3],
                        emojiType: .single,
                        searchKey: "bowling",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CF],
                        emojiType: .single,
                        searchKey: "cricketGame",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D1],
                        emojiType: .single,
                        searchKey: "fieldHockey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D2],
                        emojiType: .single,
                        searchKey: "iceHockey",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94D],
                        emojiType: .single,
                        searchKey: "lacrosse",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D3],
                        emojiType: .single,
                        searchKey: "pingPong",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F8],
                        emojiType: .single,
                        searchKey: "badminton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94A],
                        emojiType: .single,
                        searchKey: "boxingGlove",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94B],
                        emojiType: .single,
                        searchKey: "martialArtsUniform",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F945],
                        emojiType: .single,
                        searchKey: "goalNet",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F3],
                        emojiType: .single,
                        searchKey: "flagInHole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "iceSkate",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A3],
                        emojiType: .single,
                        searchKey: "fishingPole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F93F],
                        emojiType: .single,
                        searchKey: "divingMask",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BD],
                        emojiType: .single,
                        searchKey: "runningShirt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BF],
                        emojiType: .single,
                        searchKey: "skis",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F7],
                        emojiType: .single,
                        searchKey: "sled",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F94C],
                        emojiType: .single,
                        searchKey: "curlingStone",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AF],
                        emojiType: .single,
                        searchKey: "bullseye",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA80],
                        emojiType: .single,
                        searchKey: "yoYo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA81],
                        emojiType: .single,
                        searchKey: "kite",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52B],
                        emojiType: .single,
                        searchKey: "waterPistol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B1],
                        emojiType: .single,
                        searchKey: "pool8Ball",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52E],
                        emojiType: .single,
                        searchKey: "crystalBall",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA84],
                        emojiType: .single,
                        searchKey: "magicWand",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AE],
                        emojiType: .single,
                        searchKey: "videoGame",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F579, 0xFE0F],
                        emojiType: .single,
                        searchKey: "joystick",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B0],
                        emojiType: .single,
                        searchKey: "slotMachine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B2],
                        emojiType: .single,
                        searchKey: "gameDie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E9],
                        emojiType: .single,
                        searchKey: "puzzlePiece",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F8],
                        emojiType: .single,
                        searchKey: "teddyBear",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA85],
                        emojiType: .single,
                        searchKey: "piñata",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA9],
                        emojiType: .single,
                        searchKey: "mirrorBall",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA86],
                        emojiType: .single,
                        searchKey: "nestingDolls",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2660, 0xFE0F],
                        emojiType: .single,
                        searchKey: "spadeSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2665, 0xFE0F],
                        emojiType: .single,
                        searchKey: "heartSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2666, 0xFE0F],
                        emojiType: .single,
                        searchKey: "diamondSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2663, 0xFE0F],
                        emojiType: .single,
                        searchKey: "clubSuit",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x265F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "chessPawn",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F0CF],
                        emojiType: .single,
                        searchKey: "joker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F004],
                        emojiType: .single,
                        searchKey: "mahjongRedDragon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B4],
                        emojiType: .single,
                        searchKey: "flowerPlayingCards",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AD],
                        emojiType: .single,
                        searchKey: "performingArts",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5BC, 0xFE0F],
                        emojiType: .single,
                        searchKey: "framedPicture",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A8],
                        emojiType: .single,
                        searchKey: "artistPalette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F5],
                        emojiType: .single,
                        searchKey: "thread",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA1],
                        emojiType: .single,
                        searchKey: "sewingNeedle",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F6],
                        emojiType: .single,
                        searchKey: "yarn",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA2],
                        emojiType: .single,
                        searchKey: "knot",
                        unicodeVersion: 13.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .travelAndPlaces),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F30D],
                        emojiType: .single,
                        searchKey: "globeShowingEuropeAfrica",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30E],
                        emojiType: .single,
                        searchKey: "globeShowingAmericas",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30F],
                        emojiType: .single,
                        searchKey: "globeShowingAsiaAustralia",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F310],
                        emojiType: .single,
                        searchKey: "globeWithMeridians",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FA, 0xFE0F],
                        emojiType: .single,
                        searchKey: "worldMap",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FE],
                        emojiType: .single,
                        searchKey: "mapOfJapan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9ED],
                        emojiType: .single,
                        searchKey: "compass",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D4, 0xFE0F],
                        emojiType: .single,
                        searchKey: "snowCappedMountain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "mountain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30B],
                        emojiType: .single,
                        searchKey: "volcano",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FB],
                        emojiType: .single,
                        searchKey: "mountFuji",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D5, 0xFE0F],
                        emojiType: .single,
                        searchKey: "camping",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D6, 0xFE0F],
                        emojiType: .single,
                        searchKey: "beachWithUmbrella",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DC, 0xFE0F],
                        emojiType: .single,
                        searchKey: "desert",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DD, 0xFE0F],
                        emojiType: .single,
                        searchKey: "desertIsland",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "nationalPark",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "stadium",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DB, 0xFE0F],
                        emojiType: .single,
                        searchKey: "classicalBuilding",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D7, 0xFE0F],
                        emojiType: .single,
                        searchKey: "buildingConstruction",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F1],
                        emojiType: .single,
                        searchKey: "brick",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA8],
                        emojiType: .single,
                        searchKey: "rock",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAB5],
                        emojiType: .single,
                        searchKey: "wood",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D6],
                        emojiType: .single,
                        searchKey: "hut",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "houses",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3DA, 0xFE0F],
                        emojiType: .single,
                        searchKey: "derelictHouse",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E0],
                        emojiType: .single,
                        searchKey: "house",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E1],
                        emojiType: .single,
                        searchKey: "houseWithGarden",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E2],
                        emojiType: .single,
                        searchKey: "officeBuilding",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E3],
                        emojiType: .single,
                        searchKey: "japanesePostOffice",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E4],
                        emojiType: .single,
                        searchKey: "postOffice",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E5],
                        emojiType: .single,
                        searchKey: "hospital",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E6],
                        emojiType: .single,
                        searchKey: "bank",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E8],
                        emojiType: .single,
                        searchKey: "hotel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3E9],
                        emojiType: .single,
                        searchKey: "loveHotel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EA],
                        emojiType: .single,
                        searchKey: "convenienceStore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EB],
                        emojiType: .single,
                        searchKey: "school",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EC],
                        emojiType: .single,
                        searchKey: "departmentStore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3ED],
                        emojiType: .single,
                        searchKey: "factory",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EF],
                        emojiType: .single,
                        searchKey: "japaneseCastle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F0],
                        emojiType: .single,
                        searchKey: "castle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F492],
                        emojiType: .single,
                        searchKey: "wedding",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FC],
                        emojiType: .single,
                        searchKey: "tokyoTower",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FD],
                        emojiType: .single,
                        searchKey: "statueOfLiberty",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26EA],
                        emojiType: .single,
                        searchKey: "church",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54C],
                        emojiType: .single,
                        searchKey: "mosque",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D5],
                        emojiType: .single,
                        searchKey: "hinduTemple",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54D],
                        emojiType: .single,
                        searchKey: "synagogue",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26E9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "shintoShrine",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54B],
                        emojiType: .single,
                        searchKey: "kaaba",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F2],
                        emojiType: .single,
                        searchKey: "fountain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26FA],
                        emojiType: .single,
                        searchKey: "tent",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F301],
                        emojiType: .single,
                        searchKey: "foggy",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F303],
                        emojiType: .single,
                        searchKey: "nightWithStars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3D9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cityscape",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F304],
                        emojiType: .single,
                        searchKey: "sunriseOverMountains",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F305],
                        emojiType: .single,
                        searchKey: "sunrise",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F306],
                        emojiType: .single,
                        searchKey: "cityscapeAtDusk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F307],
                        emojiType: .single,
                        searchKey: "sunset",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F309],
                        emojiType: .single,
                        searchKey: "bridgeAtNight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2668, 0xFE0F],
                        emojiType: .single,
                        searchKey: "hotSprings",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A0],
                        emojiType: .single,
                        searchKey: "carouselHorse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DD],
                        emojiType: .single,
                        searchKey: "playgroundSlide",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A1],
                        emojiType: .single,
                        searchKey: "ferrisWheel",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A2],
                        emojiType: .single,
                        searchKey: "rollerCoaster",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F488],
                        emojiType: .single,
                        searchKey: "barberPole",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AA],
                        emojiType: .single,
                        searchKey: "circusTent",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F682],
                        emojiType: .single,
                        searchKey: "locomotive",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F683],
                        emojiType: .single,
                        searchKey: "railwayCar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F684],
                        emojiType: .single,
                        searchKey: "highSpeedTrain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F685],
                        emojiType: .single,
                        searchKey: "bulletTrain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F686],
                        emojiType: .single,
                        searchKey: "train",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F687],
                        emojiType: .single,
                        searchKey: "metro",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F688],
                        emojiType: .single,
                        searchKey: "lightRail",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F689],
                        emojiType: .single,
                        searchKey: "station",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68A],
                        emojiType: .single,
                        searchKey: "tram",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69D],
                        emojiType: .single,
                        searchKey: "monorail",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69E],
                        emojiType: .single,
                        searchKey: "mountainRailway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68B],
                        emojiType: .single,
                        searchKey: "tramCar",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68C],
                        emojiType: .single,
                        searchKey: "bus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68D],
                        emojiType: .single,
                        searchKey: "oncomingBus",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68E],
                        emojiType: .single,
                        searchKey: "trolleybus",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F690],
                        emojiType: .single,
                        searchKey: "minibus",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F691],
                        emojiType: .single,
                        searchKey: "ambulance",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F692],
                        emojiType: .single,
                        searchKey: "fireEngine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F693],
                        emojiType: .single,
                        searchKey: "policeCar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F694],
                        emojiType: .single,
                        searchKey: "oncomingPoliceCar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F695],
                        emojiType: .single,
                        searchKey: "taxi",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F696],
                        emojiType: .single,
                        searchKey: "oncomingTaxi",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F697],
                        emojiType: .single,
                        searchKey: "automobile",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F698],
                        emojiType: .single,
                        searchKey: "oncomingAutomobile",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F699],
                        emojiType: .single,
                        searchKey: "sportUtilityVehicle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FB],
                        emojiType: .single,
                        searchKey: "pickupTruck",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69A],
                        emojiType: .single,
                        searchKey: "deliveryTruck",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69B],
                        emojiType: .single,
                        searchKey: "articulatedLorry",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69C],
                        emojiType: .single,
                        searchKey: "tractor",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "racingCar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3CD, 0xFE0F],
                        emojiType: .single,
                        searchKey: "motorcycle",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F5],
                        emojiType: .single,
                        searchKey: "motorScooter",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BD],
                        emojiType: .single,
                        searchKey: "manualWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BC],
                        emojiType: .single,
                        searchKey: "motorizedWheelchair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FA],
                        emojiType: .single,
                        searchKey: "autoRickshaw",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B2],
                        emojiType: .single,
                        searchKey: "bicycle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F4],
                        emojiType: .single,
                        searchKey: "kickScooter",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F9],
                        emojiType: .single,
                        searchKey: "skateboard",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6FC],
                        emojiType: .single,
                        searchKey: "rollerSkate",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F68F],
                        emojiType: .single,
                        searchKey: "busStop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "motorway",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E4, 0xFE0F],
                        emojiType: .single,
                        searchKey: "railwayTrack",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "oilDrum",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26FD],
                        emojiType: .single,
                        searchKey: "fuelPump",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DE],
                        emojiType: .single,
                        searchKey: "wheel",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A8],
                        emojiType: .single,
                        searchKey: "policeCarLight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A5],
                        emojiType: .single,
                        searchKey: "horizontalTrafficLight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A6],
                        emojiType: .single,
                        searchKey: "verticalTrafficLight",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D1],
                        emojiType: .single,
                        searchKey: "stopSign",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A7],
                        emojiType: .single,
                        searchKey: "construction",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2693],
                        emojiType: .single,
                        searchKey: "anchor",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DF],
                        emojiType: .single,
                        searchKey: "ringBuoy",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F5],
                        emojiType: .single,
                        searchKey: "sailboat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F6],
                        emojiType: .single,
                        searchKey: "canoe",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A4],
                        emojiType: .single,
                        searchKey: "speedboat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "passengerShip",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F4, 0xFE0F],
                        emojiType: .single,
                        searchKey: "ferry",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E5, 0xFE0F],
                        emojiType: .single,
                        searchKey: "motorBoat",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A2],
                        emojiType: .single,
                        searchKey: "ship",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2708, 0xFE0F],
                        emojiType: .single,
                        searchKey: "airplane",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "smallAirplane",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6EB],
                        emojiType: .single,
                        searchKey: "airplaneDeparture",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6EC],
                        emojiType: .single,
                        searchKey: "airplaneArrival",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA82],
                        emojiType: .single,
                        searchKey: "parachute",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BA],
                        emojiType: .single,
                        searchKey: "seat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F681],
                        emojiType: .single,
                        searchKey: "helicopter",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F69F],
                        emojiType: .single,
                        searchKey: "suspensionRailway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A0],
                        emojiType: .single,
                        searchKey: "mountainCableway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A1],
                        emojiType: .single,
                        searchKey: "aerialTramway",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "satellite",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F680],
                        emojiType: .single,
                        searchKey: "rocket",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6F8],
                        emojiType: .single,
                        searchKey: "flyingSaucer",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "bellhopBell",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F3],
                        emojiType: .single,
                        searchKey: "luggage",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x231B],
                        emojiType: .single,
                        searchKey: "hourglassDone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F3],
                        emojiType: .single,
                        searchKey: "hourglassNotDone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x231A],
                        emojiType: .single,
                        searchKey: "watch",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F0],
                        emojiType: .single,
                        searchKey: "alarmClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "stopwatch",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "timerClock",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F570, 0xFE0F],
                        emojiType: .single,
                        searchKey: "mantelpieceClock",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55B],
                        emojiType: .single,
                        searchKey: "twelveOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F567],
                        emojiType: .single,
                        searchKey: "twelveThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F550],
                        emojiType: .single,
                        searchKey: "oneOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55C],
                        emojiType: .single,
                        searchKey: "oneThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F551],
                        emojiType: .single,
                        searchKey: "twoOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55D],
                        emojiType: .single,
                        searchKey: "twoThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F552],
                        emojiType: .single,
                        searchKey: "threeOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55E],
                        emojiType: .single,
                        searchKey: "threeThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F553],
                        emojiType: .single,
                        searchKey: "fourOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55F],
                        emojiType: .single,
                        searchKey: "fourThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F554],
                        emojiType: .single,
                        searchKey: "fiveOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F560],
                        emojiType: .single,
                        searchKey: "fiveThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F555],
                        emojiType: .single,
                        searchKey: "sixOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F561],
                        emojiType: .single,
                        searchKey: "sixThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F556],
                        emojiType: .single,
                        searchKey: "sevenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F562],
                        emojiType: .single,
                        searchKey: "sevenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F557],
                        emojiType: .single,
                        searchKey: "eightOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F563],
                        emojiType: .single,
                        searchKey: "eightThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F558],
                        emojiType: .single,
                        searchKey: "nineOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F564],
                        emojiType: .single,
                        searchKey: "nineThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F559],
                        emojiType: .single,
                        searchKey: "tenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F565],
                        emojiType: .single,
                        searchKey: "tenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F55A],
                        emojiType: .single,
                        searchKey: "elevenOClock",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F566],
                        emojiType: .single,
                        searchKey: "elevenThirty",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F311],
                        emojiType: .single,
                        searchKey: "newMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F312],
                        emojiType: .single,
                        searchKey: "waxingCrescentMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F313],
                        emojiType: .single,
                        searchKey: "firstQuarterMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F314],
                        emojiType: .single,
                        searchKey: "waxingGibbousMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F315],
                        emojiType: .single,
                        searchKey: "fullMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F316],
                        emojiType: .single,
                        searchKey: "waningGibbousMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F317],
                        emojiType: .single,
                        searchKey: "lastQuarterMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F318],
                        emojiType: .single,
                        searchKey: "waningCrescentMoon",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F319],
                        emojiType: .single,
                        searchKey: "crescentMoon",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31A],
                        emojiType: .single,
                        searchKey: "newMoonFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31B],
                        emojiType: .single,
                        searchKey: "firstQuarterMoonFace",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31C],
                        emojiType: .single,
                        searchKey: "lastQuarterMoonFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F321, 0xFE0F],
                        emojiType: .single,
                        searchKey: "thermometer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2600, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sun",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31D],
                        emojiType: .single,
                        searchKey: "fullMoonFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31E],
                        emojiType: .single,
                        searchKey: "sunWithFace",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA90],
                        emojiType: .single,
                        searchKey: "ringedPlanet",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B50],
                        emojiType: .single,
                        searchKey: "star",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F31F],
                        emojiType: .single,
                        searchKey: "glowingStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F320],
                        emojiType: .single,
                        searchKey: "shootingStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30C],
                        emojiType: .single,
                        searchKey: "milkyWay",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2601, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cloud",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C5],
                        emojiType: .single,
                        searchKey: "sunBehindCloud",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cloudWithLightningAndRain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F324, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sunBehindSmallCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F325, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sunBehindLargeCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F326, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sunBehindRainCloud",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F327, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cloudWithRain",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F328, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cloudWithSnow",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F329, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cloudWithLightning",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "tornado",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "fog",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F32C, 0xFE0F],
                        emojiType: .single,
                        searchKey: "windFace",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F300],
                        emojiType: .single,
                        searchKey: "cyclone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F308],
                        emojiType: .single,
                        searchKey: "rainbow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F302],
                        emojiType: .single,
                        searchKey: "closedUmbrella",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2602, 0xFE0F],
                        emojiType: .single,
                        searchKey: "umbrella",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2614],
                        emojiType: .single,
                        searchKey: "umbrellaWithRainDrops",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26F1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "umbrellaOnGround",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A1],
                        emojiType: .single,
                        searchKey: "highVoltage",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2744, 0xFE0F],
                        emojiType: .single,
                        searchKey: "snowflake",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2603, 0xFE0F],
                        emojiType: .single,
                        searchKey: "snowman",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x26C4],
                        emojiType: .single,
                        searchKey: "snowmanWithoutSnow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2604, 0xFE0F],
                        emojiType: .single,
                        searchKey: "comet",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F525],
                        emojiType: .single,
                        searchKey: "fire",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A7],
                        emojiType: .single,
                        searchKey: "droplet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F30A],
                        emojiType: .single,
                        searchKey: "waterWave",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .objects),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F453],
                        emojiType: .single,
                        searchKey: "glasses",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F576, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sunglasses",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97D],
                        emojiType: .single,
                        searchKey: "goggles",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97C],
                        emojiType: .single,
                        searchKey: "labCoat",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9BA],
                        emojiType: .single,
                        searchKey: "safetyVest",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F454],
                        emojiType: .single,
                        searchKey: "necktie",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F455],
                        emojiType: .single,
                        searchKey: "tShirt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F456],
                        emojiType: .single,
                        searchKey: "jeans",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E3],
                        emojiType: .single,
                        searchKey: "scarf",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E4],
                        emojiType: .single,
                        searchKey: "gloves",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E5],
                        emojiType: .single,
                        searchKey: "coat",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E6],
                        emojiType: .single,
                        searchKey: "socks",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F457],
                        emojiType: .single,
                        searchKey: "dress",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F458],
                        emojiType: .single,
                        searchKey: "kimono",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97B],
                        emojiType: .single,
                        searchKey: "sari",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA71],
                        emojiType: .single,
                        searchKey: "onePieceSwimsuit",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA72],
                        emojiType: .single,
                        searchKey: "briefs",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA73],
                        emojiType: .single,
                        searchKey: "shorts",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F459],
                        emojiType: .single,
                        searchKey: "bikini",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45A],
                        emojiType: .single,
                        searchKey: "womanSClothes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAD],
                        emojiType: .single,
                        searchKey: "foldingHandFan",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45B],
                        emojiType: .single,
                        searchKey: "purse",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45C],
                        emojiType: .single,
                        searchKey: "handbag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45D],
                        emojiType: .single,
                        searchKey: "clutchBag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CD, 0xFE0F],
                        emojiType: .single,
                        searchKey: "shoppingBags",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F392],
                        emojiType: .single,
                        searchKey: "backpack",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA74],
                        emojiType: .single,
                        searchKey: "thongSandal",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45E],
                        emojiType: .single,
                        searchKey: "manSShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F45F],
                        emojiType: .single,
                        searchKey: "runningShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97E],
                        emojiType: .single,
                        searchKey: "hikingBoot",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F97F],
                        emojiType: .single,
                        searchKey: "flatShoe",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F460],
                        emojiType: .single,
                        searchKey: "highHeeledShoe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F461],
                        emojiType: .single,
                        searchKey: "womanSSandal",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA70],
                        emojiType: .single,
                        searchKey: "balletShoes",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F462],
                        emojiType: .single,
                        searchKey: "womanSBoot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAE],
                        emojiType: .single,
                        searchKey: "hairPick",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F451],
                        emojiType: .single,
                        searchKey: "crown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F452],
                        emojiType: .single,
                        searchKey: "womanSHat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A9],
                        emojiType: .single,
                        searchKey: "topHat",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F393],
                        emojiType: .single,
                        searchKey: "graduationCap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9E2],
                        emojiType: .single,
                        searchKey: "billedCap",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA96],
                        emojiType: .single,
                        searchKey: "militaryHelmet",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rescueWorkerSHelmet",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FF],
                        emojiType: .single,
                        searchKey: "prayerBeads",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F484],
                        emojiType: .single,
                        searchKey: "lipstick",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48D],
                        emojiType: .single,
                        searchKey: "ring",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48E],
                        emojiType: .single,
                        searchKey: "gemStone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F507],
                        emojiType: .single,
                        searchKey: "mutedSpeaker",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F508],
                        emojiType: .single,
                        searchKey: "speakerLowVolume",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F509],
                        emojiType: .single,
                        searchKey: "speakerMediumVolume",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50A],
                        emojiType: .single,
                        searchKey: "speakerHighVolume",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E2],
                        emojiType: .single,
                        searchKey: "loudspeaker",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E3],
                        emojiType: .single,
                        searchKey: "megaphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EF],
                        emojiType: .single,
                        searchKey: "postalHorn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F514],
                        emojiType: .single,
                        searchKey: "bell",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F515],
                        emojiType: .single,
                        searchKey: "bellWithSlash",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BC],
                        emojiType: .single,
                        searchKey: "musicalScore",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B5],
                        emojiType: .single,
                        searchKey: "musicalNote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B6],
                        emojiType: .single,
                        searchKey: "musicalNotes",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F399, 0xFE0F],
                        emojiType: .single,
                        searchKey: "studioMicrophone",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "levelSlider",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "controlKnobs",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A4],
                        emojiType: .single,
                        searchKey: "microphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A7],
                        emojiType: .single,
                        searchKey: "headphone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FB],
                        emojiType: .single,
                        searchKey: "radio",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B7],
                        emojiType: .single,
                        searchKey: "saxophone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA97],
                        emojiType: .single,
                        searchKey: "accordion",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B8],
                        emojiType: .single,
                        searchKey: "guitar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3B9],
                        emojiType: .single,
                        searchKey: "musicalKeyboard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BA],
                        emojiType: .single,
                        searchKey: "trumpet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3BB],
                        emojiType: .single,
                        searchKey: "violin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA95],
                        emojiType: .single,
                        searchKey: "banjo",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F941],
                        emojiType: .single,
                        searchKey: "drum",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA98],
                        emojiType: .single,
                        searchKey: "longDrum",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA87],
                        emojiType: .single,
                        searchKey: "maracas",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA88],
                        emojiType: .single,
                        searchKey: "flute",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F1],
                        emojiType: .single,
                        searchKey: "mobilePhone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F2],
                        emojiType: .single,
                        searchKey: "mobilePhoneWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x260E, 0xFE0F],
                        emojiType: .single,
                        searchKey: "telephone",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DE],
                        emojiType: .single,
                        searchKey: "telephoneReceiver",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DF],
                        emojiType: .single,
                        searchKey: "pager",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E0],
                        emojiType: .single,
                        searchKey: "faxMachine",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50B],
                        emojiType: .single,
                        searchKey: "battery",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAB],
                        emojiType: .single,
                        searchKey: "lowBattery",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50C],
                        emojiType: .single,
                        searchKey: "electricPlug",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BB],
                        emojiType: .single,
                        searchKey: "laptop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A5, 0xFE0F],
                        emojiType: .single,
                        searchKey: "desktopComputer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5A8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "printer",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2328, 0xFE0F],
                        emojiType: .single,
                        searchKey: "keyboard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5B1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "computerMouse",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5B2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "trackball",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BD],
                        emojiType: .single,
                        searchKey: "computerDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BE],
                        emojiType: .single,
                        searchKey: "floppyDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BF],
                        emojiType: .single,
                        searchKey: "opticalDisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C0],
                        emojiType: .single,
                        searchKey: "dvd",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EE],
                        emojiType: .single,
                        searchKey: "abacus",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A5],
                        emojiType: .single,
                        searchKey: "movieCamera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F39E, 0xFE0F],
                        emojiType: .single,
                        searchKey: "filmFrames",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FD, 0xFE0F],
                        emojiType: .single,
                        searchKey: "filmProjector",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3AC],
                        emojiType: .single,
                        searchKey: "clapperBoard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FA],
                        emojiType: .single,
                        searchKey: "television",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F7],
                        emojiType: .single,
                        searchKey: "camera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F8],
                        emojiType: .single,
                        searchKey: "cameraWithFlash",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F9],
                        emojiType: .single,
                        searchKey: "videoCamera",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4FC],
                        emojiType: .single,
                        searchKey: "videocassette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50D],
                        emojiType: .single,
                        searchKey: "magnifyingGlassTiltedLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50E],
                        emojiType: .single,
                        searchKey: "magnifyingGlassTiltedRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F56F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "candle",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A1],
                        emojiType: .single,
                        searchKey: "lightBulb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F526],
                        emojiType: .single,
                        searchKey: "flashlight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3EE],
                        emojiType: .single,
                        searchKey: "redPaperLantern",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA94],
                        emojiType: .single,
                        searchKey: "diyaLamp",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D4],
                        emojiType: .single,
                        searchKey: "notebookWithDecorativeCover",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D5],
                        emojiType: .single,
                        searchKey: "closedBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D6],
                        emojiType: .single,
                        searchKey: "openBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D7],
                        emojiType: .single,
                        searchKey: "greenBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D8],
                        emojiType: .single,
                        searchKey: "blueBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D9],
                        emojiType: .single,
                        searchKey: "orangeBook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DA],
                        emojiType: .single,
                        searchKey: "books",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D3],
                        emojiType: .single,
                        searchKey: "notebook",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D2],
                        emojiType: .single,
                        searchKey: "ledger",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C3],
                        emojiType: .single,
                        searchKey: "pageWithCurl",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DC],
                        emojiType: .single,
                        searchKey: "scroll",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C4],
                        emojiType: .single,
                        searchKey: "pageFacingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F0],
                        emojiType: .single,
                        searchKey: "newspaper",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rolledUpNewspaper",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D1],
                        emojiType: .single,
                        searchKey: "bookmarkTabs",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F516],
                        emojiType: .single,
                        searchKey: "bookmark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F7, 0xFE0F],
                        emojiType: .single,
                        searchKey: "label",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B0],
                        emojiType: .single,
                        searchKey: "moneyBag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA99],
                        emojiType: .single,
                        searchKey: "coin",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B4],
                        emojiType: .single,
                        searchKey: "yenBanknote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B5],
                        emojiType: .single,
                        searchKey: "dollarBanknote",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B6],
                        emojiType: .single,
                        searchKey: "euroBanknote",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B7],
                        emojiType: .single,
                        searchKey: "poundBanknote",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B8],
                        emojiType: .single,
                        searchKey: "moneyWithWings",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B3],
                        emojiType: .single,
                        searchKey: "creditCard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FE],
                        emojiType: .single,
                        searchKey: "receipt",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B9],
                        emojiType: .single,
                        searchKey: "chartIncreasingWithYen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2709, 0xFE0F],
                        emojiType: .single,
                        searchKey: "envelope",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E7],
                        emojiType: .single,
                        searchKey: "eMail",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E8],
                        emojiType: .single,
                        searchKey: "incomingEnvelope",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E9],
                        emojiType: .single,
                        searchKey: "envelopeWithArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E4],
                        emojiType: .single,
                        searchKey: "outboxTray",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E5],
                        emojiType: .single,
                        searchKey: "inboxTray",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E6],
                        emojiType: .single,
                        searchKey: "package",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EB],
                        emojiType: .single,
                        searchKey: "closedMailboxWithRaisedFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EA],
                        emojiType: .single,
                        searchKey: "closedMailboxWithLoweredFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EC],
                        emojiType: .single,
                        searchKey: "openMailboxWithRaisedFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4ED],
                        emojiType: .single,
                        searchKey: "openMailboxWithLoweredFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4EE],
                        emojiType: .single,
                        searchKey: "postbox",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5F3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "ballotBoxWithBallot",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x270F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pencil",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2712, 0xFE0F],
                        emojiType: .single,
                        searchKey: "blackNib",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "fountainPen",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pen",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58C, 0xFE0F],
                        emojiType: .single,
                        searchKey: "paintbrush",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F58D, 0xFE0F],
                        emojiType: .single,
                        searchKey: "crayon",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DD],
                        emojiType: .single,
                        searchKey: "memo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4BC],
                        emojiType: .single,
                        searchKey: "briefcase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C1],
                        emojiType: .single,
                        searchKey: "fileFolder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C2],
                        emojiType: .single,
                        searchKey: "openFileFolder",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cardIndexDividers",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C5],
                        emojiType: .single,
                        searchKey: "calendar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C6],
                        emojiType: .single,
                        searchKey: "tearOffCalendar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "spiralNotepad",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "spiralCalendar",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C7],
                        emojiType: .single,
                        searchKey: "cardIndex",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C8],
                        emojiType: .single,
                        searchKey: "chartIncreasing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4C9],
                        emojiType: .single,
                        searchKey: "chartDecreasing",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CA],
                        emojiType: .single,
                        searchKey: "barChart",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CB],
                        emojiType: .single,
                        searchKey: "clipboard",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CC],
                        emojiType: .single,
                        searchKey: "pushpin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CD],
                        emojiType: .single,
                        searchKey: "roundPushpin",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CE],
                        emojiType: .single,
                        searchKey: "paperclip",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F587, 0xFE0F],
                        emojiType: .single,
                        searchKey: "linkedPaperclips",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4CF],
                        emojiType: .single,
                        searchKey: "straightRuler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4D0],
                        emojiType: .single,
                        searchKey: "triangularRuler",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2702, 0xFE0F],
                        emojiType: .single,
                        searchKey: "scissors",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "cardFileBox",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5C4, 0xFE0F],
                        emojiType: .single,
                        searchKey: "fileCabinet",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5D1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "wastebasket",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F512],
                        emojiType: .single,
                        searchKey: "locked",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F513],
                        emojiType: .single,
                        searchKey: "unlocked",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F50F],
                        emojiType: .single,
                        searchKey: "lockedWithPen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F510],
                        emojiType: .single,
                        searchKey: "lockedWithKey",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F511],
                        emojiType: .single,
                        searchKey: "key",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DD, 0xFE0F],
                        emojiType: .single,
                        searchKey: "oldKey",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F528],
                        emojiType: .single,
                        searchKey: "hammer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA93],
                        emojiType: .single,
                        searchKey: "axe",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26CF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pick",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2692, 0xFE0F],
                        emojiType: .single,
                        searchKey: "hammerAndPick",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "hammerAndWrench",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5E1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "dagger",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2694, 0xFE0F],
                        emojiType: .single,
                        searchKey: "crossedSwords",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A3],
                        emojiType: .single,
                        searchKey: "bomb",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA83],
                        emojiType: .single,
                        searchKey: "boomerang",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F9],
                        emojiType: .single,
                        searchKey: "bowAndArrow",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6E1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "shield",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9A],
                        emojiType: .single,
                        searchKey: "carpentrySaw",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F527],
                        emojiType: .single,
                        searchKey: "wrench",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9B],
                        emojiType: .single,
                        searchKey: "screwdriver",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F529],
                        emojiType: .single,
                        searchKey: "nutAndBolt",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2699, 0xFE0F],
                        emojiType: .single,
                        searchKey: "gear",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5DC, 0xFE0F],
                        emojiType: .single,
                        searchKey: "clamp",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2696, 0xFE0F],
                        emojiType: .single,
                        searchKey: "balanceScale",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9AF],
                        emojiType: .single,
                        searchKey: "whiteCane",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F517],
                        emojiType: .single,
                        searchKey: "link",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "chains",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9D],
                        emojiType: .single,
                        searchKey: "hook",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F0],
                        emojiType: .single,
                        searchKey: "toolbox",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F2],
                        emojiType: .single,
                        searchKey: "magnet",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9C],
                        emojiType: .single,
                        searchKey: "ladder",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2697, 0xFE0F],
                        emojiType: .single,
                        searchKey: "alembic",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EA],
                        emojiType: .single,
                        searchKey: "testTube",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EB],
                        emojiType: .single,
                        searchKey: "petriDish",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EC],
                        emojiType: .single,
                        searchKey: "dna",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52C],
                        emojiType: .single,
                        searchKey: "microscope",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52D],
                        emojiType: .single,
                        searchKey: "telescope",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4E1],
                        emojiType: .single,
                        searchKey: "satelliteAntenna",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F489],
                        emojiType: .single,
                        searchKey: "syringe",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA78],
                        emojiType: .single,
                        searchKey: "dropOfBlood",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F48A],
                        emojiType: .single,
                        searchKey: "pill",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA79],
                        emojiType: .single,
                        searchKey: "adhesiveBandage",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7C],
                        emojiType: .single,
                        searchKey: "crutch",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7A],
                        emojiType: .single,
                        searchKey: "stethoscope",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA7B],
                        emojiType: .single,
                        searchKey: "xRay",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AA],
                        emojiType: .single,
                        searchKey: "door",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D7],
                        emojiType: .single,
                        searchKey: "elevator",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9E],
                        emojiType: .single,
                        searchKey: "mirror",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA9F],
                        emojiType: .single,
                        searchKey: "window",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "bed",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6CB, 0xFE0F],
                        emojiType: .single,
                        searchKey: "couchAndLamp",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA91],
                        emojiType: .single,
                        searchKey: "chair",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BD],
                        emojiType: .single,
                        searchKey: "toilet",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA0],
                        emojiType: .single,
                        searchKey: "plunger",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BF],
                        emojiType: .single,
                        searchKey: "shower",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C1],
                        emojiType: .single,
                        searchKey: "bathtub",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA4],
                        emojiType: .single,
                        searchKey: "mouseTrap",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FA92],
                        emojiType: .single,
                        searchKey: "razor",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F4],
                        emojiType: .single,
                        searchKey: "lotionBottle",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F7],
                        emojiType: .single,
                        searchKey: "safetyPin",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9F9],
                        emojiType: .single,
                        searchKey: "broom",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FA],
                        emojiType: .single,
                        searchKey: "basket",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FB],
                        emojiType: .single,
                        searchKey: "rollOfPaper",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA3],
                        emojiType: .single,
                        searchKey: "bucket",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FC],
                        emojiType: .single,
                        searchKey: "soap",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAE7],
                        emojiType: .single,
                        searchKey: "bubbles",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA5],
                        emojiType: .single,
                        searchKey: "toothbrush",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FD],
                        emojiType: .single,
                        searchKey: "sponge",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9EF],
                        emojiType: .single,
                        searchKey: "fireExtinguisher",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D2],
                        emojiType: .single,
                        searchKey: "shoppingCart",
                        unicodeVersion: 3.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AC],
                        emojiType: .single,
                        searchKey: "cigarette",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26B0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "coffin",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA6],
                        emojiType: .single,
                        searchKey: "headstone",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26B1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "funeralUrn",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F9FF],
                        emojiType: .single,
                        searchKey: "nazarAmulet",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAC],
                        emojiType: .single,
                        searchKey: "hamsa",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F5FF],
                        emojiType: .single,
                        searchKey: "moai",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAA7],
                        emojiType: .single,
                        searchKey: "placard",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAA],
                        emojiType: .single,
                        searchKey: "identificationCard",
                        unicodeVersion: 14.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .symbols),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F3E7],
                        emojiType: .single,
                        searchKey: "aTMSign",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AE],
                        emojiType: .single,
                        searchKey: "litterInBinSign",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B0],
                        emojiType: .single,
                        searchKey: "potableWater",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267F],
                        emojiType: .single,
                        searchKey: "wheelchairSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B9],
                        emojiType: .single,
                        searchKey: "menSRoom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BA],
                        emojiType: .single,
                        searchKey: "womenSRoom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BB],
                        emojiType: .single,
                        searchKey: "restroom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BC],
                        emojiType: .single,
                        searchKey: "babySymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6BE],
                        emojiType: .single,
                        searchKey: "waterCloset",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C2],
                        emojiType: .single,
                        searchKey: "passportControl",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C3],
                        emojiType: .single,
                        searchKey: "customs",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C4],
                        emojiType: .single,
                        searchKey: "baggageClaim",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6C5],
                        emojiType: .single,
                        searchKey: "leftLuggage",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "warning",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B8],
                        emojiType: .single,
                        searchKey: "childrenCrossing",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26D4],
                        emojiType: .single,
                        searchKey: "noEntry",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AB],
                        emojiType: .single,
                        searchKey: "prohibited",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B3],
                        emojiType: .single,
                        searchKey: "noBicycles",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AD],
                        emojiType: .single,
                        searchKey: "noSmoking",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6AF],
                        emojiType: .single,
                        searchKey: "noLittering",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B1],
                        emojiType: .single,
                        searchKey: "nonPotableWater",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6B7],
                        emojiType: .single,
                        searchKey: "noPedestrians",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F5],
                        emojiType: .single,
                        searchKey: "noMobilePhones",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51E],
                        emojiType: .single,
                        searchKey: "noOneUnderEighteen",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2622, 0xFE0F],
                        emojiType: .single,
                        searchKey: "radioactive",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2623, 0xFE0F],
                        emojiType: .single,
                        searchKey: "biohazard",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B06, 0xFE0F],
                        emojiType: .single,
                        searchKey: "upArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2197, 0xFE0F],
                        emojiType: .single,
                        searchKey: "upRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27A1, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2198, 0xFE0F],
                        emojiType: .single,
                        searchKey: "downRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B07, 0xFE0F],
                        emojiType: .single,
                        searchKey: "downArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2199, 0xFE0F],
                        emojiType: .single,
                        searchKey: "downLeftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B05, 0xFE0F],
                        emojiType: .single,
                        searchKey: "leftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2196, 0xFE0F],
                        emojiType: .single,
                        searchKey: "upLeftArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2195, 0xFE0F],
                        emojiType: .single,
                        searchKey: "upDownArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2194, 0xFE0F],
                        emojiType: .single,
                        searchKey: "leftRightArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x21A9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rightArrowCurvingLeft",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x21AA, 0xFE0F],
                        emojiType: .single,
                        searchKey: "leftArrowCurvingRight",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2934, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rightArrowCurvingUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2935, 0xFE0F],
                        emojiType: .single,
                        searchKey: "rightArrowCurvingDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F503],
                        emojiType: .single,
                        searchKey: "clockwiseVerticalArrows",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F504],
                        emojiType: .single,
                        searchKey: "counterclockwiseArrowsButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F519],
                        emojiType: .single,
                        searchKey: "bACKArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51A],
                        emojiType: .single,
                        searchKey: "eNDArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51B],
                        emojiType: .single,
                        searchKey: "oNArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51C],
                        emojiType: .single,
                        searchKey: "sOONArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51D],
                        emojiType: .single,
                        searchKey: "tOPArrow",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6D0],
                        emojiType: .single,
                        searchKey: "placeOfWorship",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x269B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "atomSymbol",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F549, 0xFE0F],
                        emojiType: .single,
                        searchKey: "om",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2721, 0xFE0F],
                        emojiType: .single,
                        searchKey: "starOfDavid",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2638, 0xFE0F],
                        emojiType: .single,
                        searchKey: "wheelOfDharma",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x262F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "yinYang",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x271D, 0xFE0F],
                        emojiType: .single,
                        searchKey: "latinCross",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x2626, 0xFE0F],
                        emojiType: .single,
                        searchKey: "orthodoxCross",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x262A, 0xFE0F],
                        emojiType: .single,
                        searchKey: "starAndCrescent",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x262E, 0xFE0F],
                        emojiType: .single,
                        searchKey: "peaceSymbol",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F54E],
                        emojiType: .single,
                        searchKey: "menorah",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F52F],
                        emojiType: .single,
                        searchKey: "dottedSixPointedStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1FAAF],
                        emojiType: .single,
                        searchKey: "khanda",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2648],
                        emojiType: .single,
                        searchKey: "aries",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2649],
                        emojiType: .single,
                        searchKey: "taurus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264A],
                        emojiType: .single,
                        searchKey: "gemini",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264B],
                        emojiType: .single,
                        searchKey: "cancer",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264C],
                        emojiType: .single,
                        searchKey: "leo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264D],
                        emojiType: .single,
                        searchKey: "virgo",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264E],
                        emojiType: .single,
                        searchKey: "libra",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x264F],
                        emojiType: .single,
                        searchKey: "scorpio",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2650],
                        emojiType: .single,
                        searchKey: "sagittarius",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2651],
                        emojiType: .single,
                        searchKey: "capricorn",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2652],
                        emojiType: .single,
                        searchKey: "aquarius",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2653],
                        emojiType: .single,
                        searchKey: "pisces",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26CE],
                        emojiType: .single,
                        searchKey: "ophiuchus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F500],
                        emojiType: .single,
                        searchKey: "shuffleTracksButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F501],
                        emojiType: .single,
                        searchKey: "repeatButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F502],
                        emojiType: .single,
                        searchKey: "repeatSingleButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x25B6, 0xFE0F],
                        emojiType: .single,
                        searchKey: "playButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23E9],
                        emojiType: .single,
                        searchKey: "fastForwardButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23ED, 0xFE0F],
                        emojiType: .single,
                        searchKey: "nextTrackButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "playOrPauseButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x25C0, 0xFE0F],
                        emojiType: .single,
                        searchKey: "reverseButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EA],
                        emojiType: .single,
                        searchKey: "fastReverseButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "lastTrackButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53C],
                        emojiType: .single,
                        searchKey: "upwardsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EB],
                        emojiType: .single,
                        searchKey: "fastUpButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53D],
                        emojiType: .single,
                        searchKey: "downwardsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23EC],
                        emojiType: .single,
                        searchKey: "fastDownButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F8, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pauseButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23F9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "stopButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23FA, 0xFE0F],
                        emojiType: .single,
                        searchKey: "recordButton",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x23CF, 0xFE0F],
                        emojiType: .single,
                        searchKey: "ejectButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3A6],
                        emojiType: .single,
                        searchKey: "cinema",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F505],
                        emojiType: .single,
                        searchKey: "dimButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F506],
                        emojiType: .single,
                        searchKey: "brightButton",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F6],
                        emojiType: .single,
                        searchKey: "antennaBars",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6DC],
                        emojiType: .single,
                        searchKey: "wireless",
                        unicodeVersion: 15.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F3],
                        emojiType: .single,
                        searchKey: "vibrationMode",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4F4],
                        emojiType: .single,
                        searchKey: "mobilePhoneOff",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2640, 0xFE0F],
                        emojiType: .single,
                        searchKey: "femaleSign",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2642, 0xFE0F],
                        emojiType: .single,
                        searchKey: "maleSign",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26A7, 0xFE0F],
                        emojiType: .single,
                        searchKey: "transgenderSymbol",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2716, 0xFE0F],
                        emojiType: .single,
                        searchKey: "multiply",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2795],
                        emojiType: .single,
                        searchKey: "plus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2796],
                        emojiType: .single,
                        searchKey: "minus",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2797],
                        emojiType: .single,
                        searchKey: "divide",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7F0],
                        emojiType: .single,
                        searchKey: "heavyEqualsSign",
                        unicodeVersion: 14.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267E, 0xFE0F],
                        emojiType: .single,
                        searchKey: "infinity",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x203C, 0xFE0F],
                        emojiType: .single,
                        searchKey: "doubleExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2049, 0xFE0F],
                        emojiType: .single,
                        searchKey: "exclamationQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2753],
                        emojiType: .single,
                        searchKey: "redQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2754],
                        emojiType: .single,
                        searchKey: "whiteQuestionMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2755],
                        emojiType: .single,
                        searchKey: "whiteExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2757],
                        emojiType: .single,
                        searchKey: "redExclamationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3030, 0xFE0F],
                        emojiType: .single,
                        searchKey: "wavyDash",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B1],
                        emojiType: .single,
                        searchKey: "currencyExchange",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4B2],
                        emojiType: .single,
                        searchKey: "heavyDollarSign",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2695, 0xFE0F],
                        emojiType: .single,
                        searchKey: "medicalSymbol",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x267B, 0xFE0F],
                        emojiType: .single,
                        searchKey: "recyclingSymbol",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x269C, 0xFE0F],
                        emojiType: .single,
                        searchKey: "fleurDeLis",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F531],
                        emojiType: .single,
                        searchKey: "tridentEmblem",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4DB],
                        emojiType: .single,
                        searchKey: "nameBadge",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F530],
                        emojiType: .single,
                        searchKey: "japaneseSymbolForBeginner",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B55],
                        emojiType: .single,
                        searchKey: "hollowRedCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2705],
                        emojiType: .single,
                        searchKey: "checkMarkButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2611, 0xFE0F],
                        emojiType: .single,
                        searchKey: "checkBoxWithCheck",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2714, 0xFE0F],
                        emojiType: .single,
                        searchKey: "checkMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x274C],
                        emojiType: .single,
                        searchKey: "crossMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x274E],
                        emojiType: .single,
                        searchKey: "crossMarkButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27B0],
                        emojiType: .single,
                        searchKey: "curlyLoop",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x27BF],
                        emojiType: .single,
                        searchKey: "doubleCurlyLoop",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x303D, 0xFE0F],
                        emojiType: .single,
                        searchKey: "partAlternationMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2733, 0xFE0F],
                        emojiType: .single,
                        searchKey: "eightSpokedAsterisk",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2734, 0xFE0F],
                        emojiType: .single,
                        searchKey: "eightPointedStar",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2747, 0xFE0F],
                        emojiType: .single,
                        searchKey: "sparkle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x00A9, 0xFE0F],
                        emojiType: .single,
                        searchKey: "copyright",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x00AE, 0xFE0F],
                        emojiType: .single,
                        searchKey: "registered",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2122, 0xFE0F],
                        emojiType: .single,
                        searchKey: "tradeMark",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0023, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x002A, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x0030, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap0",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0031, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap1",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0032, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap2",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0033, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap3",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0034, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap4",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0035, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap5",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0036, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap6",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0037, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap7",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0038, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap8",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x0039, 0xFE0F, 0x20E3],
                        emojiType: .single,
                        searchKey: "keycap9",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F51F],
                        emojiType: .single,
                        searchKey: "keycap10",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F520],
                        emojiType: .single,
                        searchKey: "inputLatinUppercase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F521],
                        emojiType: .single,
                        searchKey: "inputLatinLowercase",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F522],
                        emojiType: .single,
                        searchKey: "inputNumbers",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F523],
                        emojiType: .single,
                        searchKey: "inputSymbols",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F524],
                        emojiType: .single,
                        searchKey: "inputLatinLetters",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F170, 0xFE0F],
                        emojiType: .single,
                        searchKey: "aButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F18E],
                        emojiType: .single,
                        searchKey: "aBButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F171, 0xFE0F],
                        emojiType: .single,
                        searchKey: "bButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F191],
                        emojiType: .single,
                        searchKey: "cLButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F192],
                        emojiType: .single,
                        searchKey: "cOOLButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F193],
                        emojiType: .single,
                        searchKey: "fREEButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2139, 0xFE0F],
                        emojiType: .single,
                        searchKey: "information",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F194],
                        emojiType: .single,
                        searchKey: "iDButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x24C2, 0xFE0F],
                        emojiType: .single,
                        searchKey: "circledM",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F195],
                        emojiType: .single,
                        searchKey: "nEWButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F196],
                        emojiType: .single,
                        searchKey: "nGButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F17E, 0xFE0F],
                        emojiType: .single,
                        searchKey: "oButtonBloodType",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F197],
                        emojiType: .single,
                        searchKey: "oKButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F17F, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F198],
                        emojiType: .single,
                        searchKey: "sOSButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F199],
                        emojiType: .single,
                        searchKey: "uPButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F19A],
                        emojiType: .single,
                        searchKey: "vSButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F201],
                        emojiType: .single,
                        searchKey: "japaneseHereButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F202, 0xFE0F],
                        emojiType: .single,
                        searchKey: "japaneseServiceChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F237, 0xFE0F],
                        emojiType: .single,
                        searchKey: "japaneseMonthlyAmountButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F236],
                        emojiType: .single,
                        searchKey: "japaneseNotFreeOfChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F22F],
                        emojiType: .single,
                        searchKey: "japaneseReservedButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F250],
                        emojiType: .single,
                        searchKey: "japaneseBargainButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F239],
                        emojiType: .single,
                        searchKey: "japaneseDiscountButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F21A],
                        emojiType: .single,
                        searchKey: "japaneseFreeOfChargeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F232],
                        emojiType: .single,
                        searchKey: "japaneseProhibitedButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F251],
                        emojiType: .single,
                        searchKey: "japaneseAcceptableButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F238],
                        emojiType: .single,
                        searchKey: "japaneseApplicationButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F234],
                        emojiType: .single,
                        searchKey: "japanesePassingGradeButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F233],
                        emojiType: .single,
                        searchKey: "japaneseVacancyButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3297, 0xFE0F],
                        emojiType: .single,
                        searchKey: "japaneseCongratulationsButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x3299, 0xFE0F],
                        emojiType: .single,
                        searchKey: "japaneseSecretButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F23A],
                        emojiType: .single,
                        searchKey: "japaneseOpenForBusinessButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F235],
                        emojiType: .single,
                        searchKey: "japaneseNoVacancyButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F534],
                        emojiType: .single,
                        searchKey: "redCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E0],
                        emojiType: .single,
                        searchKey: "orangeCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E1],
                        emojiType: .single,
                        searchKey: "yellowCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E2],
                        emojiType: .single,
                        searchKey: "greenCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F535],
                        emojiType: .single,
                        searchKey: "blueCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E3],
                        emojiType: .single,
                        searchKey: "purpleCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E4],
                        emojiType: .single,
                        searchKey: "brownCircle",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x26AB],
                        emojiType: .single,
                        searchKey: "blackCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x26AA],
                        emojiType: .single,
                        searchKey: "whiteCircle",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E5],
                        emojiType: .single,
                        searchKey: "redSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E7],
                        emojiType: .single,
                        searchKey: "orangeSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E8],
                        emojiType: .single,
                        searchKey: "yellowSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E9],
                        emojiType: .single,
                        searchKey: "greenSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7E6],
                        emojiType: .single,
                        searchKey: "blueSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7EA],
                        emojiType: .single,
                        searchKey: "purpleSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F7EB],
                        emojiType: .single,
                        searchKey: "brownSquare",
                        unicodeVersion: 12.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B1B],
                        emojiType: .single,
                        searchKey: "blackLargeSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x2B1C],
                        emojiType: .single,
                        searchKey: "whiteLargeSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FC, 0xFE0F],
                        emojiType: .single,
                        searchKey: "blackMediumSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FB, 0xFE0F],
                        emojiType: .single,
                        searchKey: "whiteMediumSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FE],
                        emojiType: .single,
                        searchKey: "blackMediumSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25FD],
                        emojiType: .single,
                        searchKey: "whiteMediumSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25AA, 0xFE0F],
                        emojiType: .single,
                        searchKey: "blackSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x25AB, 0xFE0F],
                        emojiType: .single,
                        searchKey: "whiteSmallSquare",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F536],
                        emojiType: .single,
                        searchKey: "largeOrangeDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F537],
                        emojiType: .single,
                        searchKey: "largeBlueDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F538],
                        emojiType: .single,
                        searchKey: "smallOrangeDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F539],
                        emojiType: .single,
                        searchKey: "smallBlueDiamond",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53A],
                        emojiType: .single,
                        searchKey: "redTrianglePointedUp",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F53B],
                        emojiType: .single,
                        searchKey: "redTrianglePointedDown",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F4A0],
                        emojiType: .single,
                        searchKey: "diamondWithADot",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F518],
                        emojiType: .single,
                        searchKey: "radioButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F533],
                        emojiType: .single,
                        searchKey: "whiteSquareButton",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F532],
                        emojiType: .single,
                        searchKey: "blackSquareButton",
                        unicodeVersion: 0.6
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            ),
            .init(
                categoryName: getEmojiCategoryTitle(for: .flags),
                emojis: [
                    MCEmoji(
                        emojiKeys: [0x1F3C1],
                        emojiType: .single,
                        searchKey: "chequeredFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F6A9],
                        emojiType: .single,
                        searchKey: "triangularFlag",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F38C],
                        emojiType: .single,
                        searchKey: "crossedFlags",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4],
                        emojiType: .single,
                        searchKey: "blackFlag",
                        unicodeVersion: 1.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F],
                        emojiType: .single,
                        searchKey: "whiteFlag",
                        unicodeVersion: 0.7
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F, 0x200D, 0x1F308],
                        emojiType: .single,
                        searchKey: "rainbowFlag",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F3, 0xFE0F, 0x200D, 0x26A7, 0xFE0F],
                        emojiType: .single,
                        searchKey: "transgenderFlag",
                        unicodeVersion: 13.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0x200D, 0x2620, 0xFE0F],
                        emojiType: .single,
                        searchKey: "pirateFlag",
                        unicodeVersion: 11.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagAscensionIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagAndorra",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagUnitedArabEmirates",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagAfghanistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagAntiguaBarbuda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagAnguilla",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagAlbania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagArmenia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagAngola",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F6],
                        emojiType: .single,
                        searchKey: "flagAntarctica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagArgentina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagAmericanSamoa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagAustria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagAustralia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagAruba",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FD],
                        emojiType: .single,
                        searchKey: "flagÅlandIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E6, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagAzerbaijan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagBosniaHerzegovina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E7],
                        emojiType: .single,
                        searchKey: "flagBarbados",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagBangladesh",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagBelgium",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagBurkinaFaso",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagBulgaria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagBahrain",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagBurundi",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1EF],
                        emojiType: .single,
                        searchKey: "flagBenin",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagStBarthélemy",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagBermuda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagBrunei",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagBolivia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F6],
                        emojiType: .single,
                        searchKey: "flagCaribbeanNetherlands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagBrazil",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagBahamas",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagBhutan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagBouvetIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagBotswana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagBelarus",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E7, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagBelize",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagCanada",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagCocosKeelingIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagCongoKinshasa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagCentralAfricanRepublic",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagCongoBrazzaville",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagSwitzerland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagCôteDIvoire",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagCookIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagChile",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagCameroon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagChina",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagColombia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagClippertonIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagCostaRica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagCuba",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagCapeVerde",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagCuraçao",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FD],
                        emojiType: .single,
                        searchKey: "flagChristmasIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagCyprus",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E8, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagCzechia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagGermany",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagDiegoGarcia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1EF],
                        emojiType: .single,
                        searchKey: "flagDjibouti",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagDenmark",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagDominica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagDominicanRepublic",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1E9, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagAlgeria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagCeutaMelilla",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagEcuador",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagEstonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagEgypt",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagWesternSahara",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagEritrea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagSpain",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagEthiopia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EA, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagEuropeanUnion",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagFinland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1EF],
                        emojiType: .single,
                        searchKey: "flagFiji",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagFalklandIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagMicronesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagFaroeIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EB, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagFrance",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagGabon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E7],
                        emojiType: .single,
                        searchKey: "flagUnitedKingdom",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagGrenada",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagGeorgia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagFrenchGuiana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagGuernsey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagGhana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagGibraltar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagGreenland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagGambia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagGuadeloupe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F6],
                        emojiType: .single,
                        searchKey: "flagEquatorialGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagGreece",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagSouthGeorgiaSouthSandwichIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagGuatemala",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagGuam",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagGuineaBissau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EC, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagGuyana",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagHongKongSARChina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagHeardMcDonaldIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagHonduras",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagCroatia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagHaiti",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1ED, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagHungary",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagCanaryIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagIndonesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagIreland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagIsrael",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagIsleOfMan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagIndia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagBritishIndianOceanTerritory",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F6],
                        emojiType: .single,
                        searchKey: "flagIraq",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagIran",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagIceland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EE, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagItaly",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagJersey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagJamaica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagJordan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1EF, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagJapan",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagKenya",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagKyrgyzstan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagCambodia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagKiribati",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagComoros",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagStKittsNevis",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagNorthKorea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagSouthKorea",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagKuwait",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagCaymanIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F0, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagKazakhstan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagLaos",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E7],
                        emojiType: .single,
                        searchKey: "flagLebanon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagStLucia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagLiechtenstein",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagSriLanka",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagLiberia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagLesotho",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagLithuania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagLuxembourg",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagLatvia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F1, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagLibya",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagMorocco",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagMonaco",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagMoldova",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagMontenegro",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagStMartin",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagMadagascar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagMarshallIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagNorthMacedonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagMali",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagMyanmarBurma",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagMongolia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagMacaoSARChina",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagNorthernMarianaIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F6],
                        emojiType: .single,
                        searchKey: "flagMartinique",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagMauritania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagMontserrat",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagMalta",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagMauritius",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagMaldives",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagMalawi",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FD],
                        emojiType: .single,
                        searchKey: "flagMexico",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagMalaysia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F2, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagMozambique",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagNamibia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagNewCaledonia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagNiger",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagNorfolkIsland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagNigeria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagNicaragua",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagNetherlands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagNorway",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F5],
                        emojiType: .single,
                        searchKey: "flagNepal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagNauru",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagNiue",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F3, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagNewZealand",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F4, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagOman",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagPanama",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagPeru",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagFrenchPolynesia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagPapuaNewGuinea",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagPhilippines",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagPakistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagPoland",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagStPierreMiquelon",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagPitcairnIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagPuertoRico",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagPalestinianTerritories",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagPortugal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagPalau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F5, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagParaguay",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F6, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagQatar",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagRéunion",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagRomania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagSerbia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagRussia",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F7, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagRwanda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagSaudiArabia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E7],
                        emojiType: .single,
                        searchKey: "flagSolomonIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagSeychelles",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagSudan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagSweden",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagSingapore",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagStHelena",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagSlovenia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1EF],
                        emojiType: .single,
                        searchKey: "flagSvalbardJanMayen",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagSlovakia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagSierraLeone",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagSanMarino",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagSenegal",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagSomalia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagSuriname",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagSouthSudan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagSãoToméPríncipe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagElSalvador",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FD],
                        emojiType: .single,
                        searchKey: "flagSintMaarten",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagSyria",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F8, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagEswatini",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagTristanDaCunha",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagTurksCaicosIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1E9],
                        emojiType: .single,
                        searchKey: "flagChad",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagFrenchSouthernTerritories",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagTogo",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1ED],
                        emojiType: .single,
                        searchKey: "flagThailand",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1EF],
                        emojiType: .single,
                        searchKey: "flagTajikistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagTokelau",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F1],
                        emojiType: .single,
                        searchKey: "flagTimorLeste",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagTurkmenistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagTunisia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F4],
                        emojiType: .single,
                        searchKey: "flagTonga",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F7],
                        emojiType: .single,
                        searchKey: "flagTurkey",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagTrinidadTobago",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FB],
                        emojiType: .single,
                        searchKey: "flagTuvalu",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagTaiwan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1F9, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagTanzania",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagUkraine",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagUganda",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagUSOutlyingIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagUnitedNations",
                        unicodeVersion: 4.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagUnitedStates",
                        unicodeVersion: 0.6
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1FE],
                        emojiType: .single,
                        searchKey: "flagUruguay",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FA, 0x1F1FF],
                        emojiType: .single,
                        searchKey: "flagUzbekistan",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagVaticanCity",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1E8],
                        emojiType: .single,
                        searchKey: "flagStVincentGrenadines",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagVenezuela",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EC],
                        emojiType: .single,
                        searchKey: "flagBritishVirginIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1EE],
                        emojiType: .single,
                        searchKey: "flagUSVirginIslands",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1F3],
                        emojiType: .single,
                        searchKey: "flagVietnam",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FB, 0x1F1FA],
                        emojiType: .single,
                        searchKey: "flagVanuatu",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FC, 0x1F1EB],
                        emojiType: .single,
                        searchKey: "flagWallisFutuna",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FC, 0x1F1F8],
                        emojiType: .single,
                        searchKey: "flagSamoa",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FD, 0x1F1F0],
                        emojiType: .single,
                        searchKey: "flagKosovo",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FE, 0x1F1EA],
                        emojiType: .single,
                        searchKey: "flagYemen",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FE, 0x1F1F9],
                        emojiType: .single,
                        searchKey: "flagMayotte",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1E6],
                        emojiType: .single,
                        searchKey: "flagSouthAfrica",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1F2],
                        emojiType: .single,
                        searchKey: "flagZambia",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F1FF, 0x1F1FC],
                        emojiType: .single,
                        searchKey: "flagZimbabwe",
                        unicodeVersion: 2.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0065, 0xE006E, 0xE0067, 0xE007F],
                        emojiType: .single,
                        searchKey: "flagEngland",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0073, 0xE0063, 0xE0074, 0xE007F],
                        emojiType: .single,
                        searchKey: "flagScotland",
                        unicodeVersion: 5.0
                    ),
                    MCEmoji(
                        emojiKeys: [0x1F3F4, 0xE0067, 0xE0062, 0xE0077, 0xE006C, 0xE0073, 0xE007F],
                        emojiType: .single,
                        searchKey: "flagWales",
                        unicodeVersion: 5.0
                    )
                ].filter({ $0.unicodeVersion <= maxCurrentAvailableUnicodeVersion })
            )
        ]
    }
    
    // MARK: - Private Methods
    
    /// - Returns: Localized name for the emoji category.
    private func getEmojiCategoryTitle(for type: MCEmojiCategoryType) -> String {
        return NSLocalizedString(
            type.localizeKey,
            tableName: "MCEmojiPickerLocalizable",
            bundle: .module,
            comment: ""
        )
    }
}
