//
//  Elements.swift
//  Notebox
//
//  Created by Jay Sethi on 04/07/18.
//



import UIKit

public class Elements :NSObject
{

    //// Drawing Methods

    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 568), resizing: ResizingBehavior = .aspectFit, fCD333: UIColor = UIColor(red: 0.988, green: 0.827, blue: 0.200, alpha: 1.000)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 320, height: 568), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 320, y: resizedFrame.height / 568)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 320, resizedFrame.height / 568)



        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black.withAlphaComponent(0.25)
        shadow.shadowOffset = CGSize(width: 0, height: 4)
        shadow.shadowBlurRadius = 10

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 20, width: 320, height: 44))
        fCD333.setFill()
        rectanglePath.fill()


        //// Explore Heading Drawing
        let exploreHeadingPath = UIBezierPath()
        exploreHeadingPath.move(to: CGPoint(x: 0, y: 64))
        exploreHeadingPath.addLine(to: CGPoint(x: 0, y: 129))
        exploreHeadingPath.addLine(to: CGPoint(x: 165, y: 207))
        exploreHeadingPath.addLine(to: CGPoint(x: 320, y: 149.5))
        exploreHeadingPath.addLine(to: CGPoint(x: 320, y: 64))
        fCD333.setFill()
        exploreHeadingPath.fill()


        //// Hot big Drawing
        let hotBigPath = UIBezierPath(roundedRect: CGRect(x: 28, y: 115, width: 255, height: 193), cornerRadius: 15)
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        hotBigPath.fill()
        context.restoreGState()

        fCD333.setStroke()
        hotBigPath.lineWidth = 2
        hotBigPath.stroke()


        //// Search Icon Circle Drawing
        let searchIconCirclePath = UIBezierPath(ovalIn: CGRect(x: 154, y: 43, width: 40, height: 40))
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        searchIconCirclePath.fill()
        context.restoreGState()



        //// Balance Circle Drawing
        let balanceCirclePath = UIBezierPath(ovalIn: CGRect(x: 241.5, y: 31.5, width: 64, height: 64))
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        balanceCirclePath.fill()
        context.restoreGState()



        //// Subjects Circle Drawing
        let subjectsCirclePath = UIBezierPath(ovalIn: CGRect(x: 46.5, y: 31.5, width: 64, height: 64))
        UIColor.white.setFill()
        subjectsCirclePath.fill()
        fCD333.setStroke()
        subjectsCirclePath.lineWidth = 1
        subjectsCirclePath.stroke()


        //// Hot small Drawing
        let hotSmallPath = UIBezierPath(roundedRect: CGRect(x: 46, y: 190, width: 221, height: 97.87), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        hotSmallPath.fill()
        context.restoreGState()

        fCD333.setStroke()
        hotSmallPath.lineWidth = 2
        hotSmallPath.stroke()


        //// Notes (mini) Drawing
        let notesMiniPath = UIBezierPath(roundedRect: CGRect(x: 28, y: 432, width: 255, height: 88), cornerRadius: 10)
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        notesMiniPath.fill()
        context.restoreGState()

        fCD333.setStroke()
        notesMiniPath.lineWidth = 2
        notesMiniPath.stroke()


        //// Star Drawing
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 62.5, y: 269.5))
        starPath.addLine(to: CGPoint(x: 64.26, y: 273.07))
        starPath.addLine(to: CGPoint(x: 68.21, y: 273.65))
        starPath.addLine(to: CGPoint(x: 65.35, y: 276.43))
        starPath.addLine(to: CGPoint(x: 66.03, y: 280.35))
        starPath.addLine(to: CGPoint(x: 62.5, y: 278.5))
        starPath.addLine(to: CGPoint(x: 58.97, y: 280.35))
        starPath.addLine(to: CGPoint(x: 59.65, y: 276.43))
        starPath.addLine(to: CGPoint(x: 56.79, y: 273.65))
        starPath.addLine(to: CGPoint(x: 60.74, y: 273.07))
        starPath.close()
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow.shadowOffset.width * resizedShadowScale, height: shadow.shadowOffset.height * resizedShadowScale), blur: shadow.shadowBlurRadius * resizedShadowScale, color: (shadow.shadowColor as! UIColor).cgColor)
        UIColor.white.setFill()
        starPath.fill()
        context.restoreGState()

        fCD333.setStroke()
        starPath.lineWidth = 1
        starPath.stroke()


        //// Bookmark Drawing
        let bookmarkPath = UIBezierPath()
        bookmarkPath.move(to: CGPoint(x: 206.5, y: 341.5))
        bookmarkPath.addCurve(to: CGPoint(x: 206.5, y: 377.5), controlPoint1: CGPoint(x: 206.5, y: 385.5), controlPoint2: CGPoint(x: 206.5, y: 377.5))
        bookmarkPath.addLine(to: CGPoint(x: 216, y: 368))
        bookmarkPath.addLine(to: CGPoint(x: 225.5, y: 377.5))
        bookmarkPath.addLine(to: CGPoint(x: 225.5, y: 341.5))
        bookmarkPath.addLine(to: CGPoint(x: 206.5, y: 341.5))
        fCD333.setFill()
        bookmarkPath.fill()
        
        context.restoreGState()

    }




    @objc(ElementsResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
